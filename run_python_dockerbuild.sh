#!/bin/bash

set -e

while getopts "p:v:" parameter_Option; do 
  case "${parameter_Option}" in
    p) PYTHON_VERSION=${OPTARG};;
    v) ONNXRUNTIME_VERSION=${OPTARG};;
    *) echo "Usage: $0 -p <cp310|cp311|cp312|cp313|cp313t|cp314|cp314t> [-v <onnxruntime_version>]"
       exit 1;;
  esac
done

if [ -z "${PYTHON_VERSION}" ] || [ -z "${ONNXRUNTIME_VERSION}" ]; then
  echo "Usage: $0 -p cp310 -v v1.24.1"
  exit 1
fi

if [ ! -d "/opt/data/build" ] || [ ! -d "/opt/data/cache" ]; then
  mkdir -p /opt/data/build /opt/data/cache
  chown -R 1001:1001 /opt/data
fi

mkdir -p /opt/data/${ONNXRUNTIME_VERSION}
cd /opt/data/${ONNXRUNTIME_VERSION} || exit 1

if [ ! -d "onnxruntime" ]; then
  git clone --recursive --depth=1 -b ${ONNXRUNTIME_VERSION} https://github.com/microsoft/onnxruntime
fi

cd onnxruntime || exit 1
if [ ! -f "cmake/vcpkg-ports/cpuinfo/patch_cpuinfo_h_for_loong64.patch" ]; then
  wget -qO - https://github.com/loong64/onnxruntime/raw/refs/heads/main/patch_loong64.patch | patch -p1
  wget -qO cmake/vcpkg-ports/cpuinfo/patch_cpuinfo_h_for_loong64.patch https://github.com/loong64/pytorch/raw/refs/heads/main/cpuinfo/cpuinfo_loong64.patch
fi

mkdir -p wheelhouse
chown 1001:1001 wheelhouse

DEVICE=CPU
BUILD_CONFIG=Release
DOCKER_SCRIPT_OPTIONS=("-d" "${DEVICE}" "-c" "${BUILD_CONFIG}")
PYTHON_EXES="/opt/python/${PYTHON_VERSION}-${PYTHON_VERSION}/bin/python"
if [ "${PYTHON_VERSION}" = "cp313t" ] || [ "${PYTHON_VERSION}" = "cp314t" ]; then
  PYTHON_EXES="/opt/python/${PYTHON_VERSION%t}-${PYTHON_VERSION}/bin/python"
fi

if [ "${PYTHON_EXES}" != "" ] ; then
  DOCKER_SCRIPT_OPTIONS+=("-p" "${PYTHON_EXES}")
fi
BUILD_EXTR_PAR='--use_binskim_compliant_compile_flags --build_wheel --cmake_extra_defines onnxruntime_BUILD_BENCHMARKS=ON'
if [ "${BUILD_EXTR_PAR}" != "" ] ; then
  DOCKER_SCRIPT_OPTIONS+=("-x" "${BUILD_EXTR_PAR}")
fi
DOCKER_SCRIPT_OPTIONS+=("-e")
DOCKER_IMAGE="ghcr.io/loong64/onnxruntimecpubuildpythonloongarch64:${ONNXRUNTIME_VERSION}"
  
docker run --rm \
  --platform linux/loong64 \
  --volume "$(pwd):/onnxruntime_src" \
  --volume "/opt/data/build:/build" \
  --volume "/opt/data/cache:/home/onnxruntimedev/.cache" \
  -w /onnxruntime_src \
  -e ALLOW_RELEASED_ONNX_OPSET_ONLY=0 \
  "$DOCKER_IMAGE" tools/ci_build/github/linux/build_linux_python_package.sh "${DOCKER_SCRIPT_OPTIONS[@]}"

