FROM ghcr.io/loong64/manylinux_2_38_loongarch64:2025.04.23-1

ENV PIP_EXTRA_INDEX_URL="https://gitlab.com/api/v4/projects/65746188/packages/pypi/simple"

RUN mkdir -p /tmp/scripts && \
    curl -sL -o ninja-linux.zip https://github.com/loong64/ninja/releases/latest/download/ninja-linux-loongarch64.zip && \
    unzip ninja-linux.zip -d /usr/local/bin && \
    rm -f ninja-linux.zip

ADD scripts /tmp/scripts
RUN cd /tmp/scripts && /tmp/scripts/install_centos.sh && /tmp/scripts/install_deps.sh && rm -rf /tmp/scripts && \
    yum clean all

ENV USE_CCACHE=1
ARG BUILD_UID=1001
ARG BUILD_USER=onnxruntimedev
RUN adduser --uid $BUILD_UID $BUILD_USER
WORKDIR /home/$BUILD_USER
USER $BUILD_USER