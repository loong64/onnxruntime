<p align="center"><img width="50%" src="https://github.com/microsoft/onnxruntime/blob/main/docs/images/ONNX_Runtime_logo_dark.png?raw=true" /></p>

**ONNX Runtime is a cross-platform inference and training machine-learning accelerator**.

**ONNX Runtime inference** can enable faster customer experiences and lower costs, supporting models from deep learning frameworks such as PyTorch and TensorFlow/Keras as well as classical machine learning libraries such as scikit-learn, LightGBM, XGBoost, etc. ONNX Runtime is compatible with different hardware, drivers, and operating systems, and provides optimal performance by leveraging hardware accelerators where applicable alongside graph optimizations and transforms. [Learn more &rarr;](https://www.onnxruntime.ai/docs/#onnx-runtime-for-inferencing)

**ONNX Runtime training** can accelerate the model training time on multi-node NVIDIA GPUs for transformer models with a one-line addition for existing PyTorch training scripts. [Learn more &rarr;](https://www.onnxruntime.ai/docs/#onnx-runtime-for-training)

## Get Started & Resources

* **General Information**: [onnxruntime.ai](https://onnxruntime.ai)

* **Usage documentation and tutorials**: [onnxruntime.ai/docs](https://onnxruntime.ai/docs)

* **YouTube video tutorials**: [youtube.com/@ONNXRuntime](https://www.youtube.com/@ONNXRuntime)

* [**Upcoming Release Roadmap**](https://onnxruntime.ai/roadmap)

* **Companion sample repositories**:
  - ONNX Runtime Inferencing: [microsoft/onnxruntime-inference-examples](https://github.com/microsoft/onnxruntime-inference-examples)
  - ONNX Runtime Training: [microsoft/onnxruntime-training-examples](https://github.com/microsoft/onnxruntime-training-examples)

## Builtin Pipeline Status

|System|Inference|Training|
|---|---|---|
|Windows|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Windows%20CPU%20CI%20Pipeline?label=Windows+CPU)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=9)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Windows%20GPU%20CUDA%20CI%20Pipeline?label=Windows+GPU+CUDA)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=218)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Windows%20GPU%20TensorRT%20CI%20Pipeline?label=Windows+GPU+TensorRT)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=47)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Windows%20GPU%20WebGPU%20CI%20Pipeline?label=Windows+GPU+WebGPU)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=228)||
|Linux|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Linux%20CPU%20CI%20Pipeline?label=Linux+CPU)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=11)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Linux%20CPU%20Minimal%20Build%20E2E%20CI%20Pipeline?label=Linux+CPU+Minimal+Build)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=64)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Linux%20GPU%20CI%20Pipeline?label=Linux+GPU)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=12)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Linux%20GPU%20TensorRT%20CI%20Pipeline?label=Linux+GPU+TensorRT)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=45)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Linux%20OpenVINO%20CI%20Pipeline?label=Linux+OpenVINO)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=55)|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/orttraining-linux-ci-pipeline?label=Linux+CPU+Training)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=86)<br>[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/orttraining-linux-gpu-ci-pipeline?label=Linux+GPU+Training)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=84)|
|Mac|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/MacOS%20CI%20Pipeline?label=MacOS+CPU)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=13)||
|Android|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/Android%20CI%20Pipeline?label=Android)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=53)||
|iOS|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/iOS%20CI%20Pipeline?label=iOS)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=134)||
|Web|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/ONNX%20Runtime%20Web%20CI%20Pipeline?label=Web)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=161)||
|Other|[![Build Status](https://dev.azure.com/onnxruntime/onnxruntime/_apis/build/status/onnxruntime-binary-size-checks-ci-pipeline?repoName=microsoft%2Fonnxruntime&label=Binary+Size+Check)](https://dev.azure.com/onnxruntime/onnxruntime/_build/latest?definitionId=187&repoName=microsoft%2Fonnxruntime)||

This project is tested with [BrowserStack](https://www.browserstack.com/home).

## Third-party Pipeline Status

|System|Inference|Training|
|---|---|---|
|Linux|[![Build Status](https://github.com/Ascend/onnxruntime/actions/workflows/build-and-test.yaml/badge.svg)](https://github.com/Ascend/onnxruntime/actions/workflows/build-and-test.yaml)||

## Releases

The current release and past releases can be found here: https://github.com/microsoft/onnxruntime/releases.

For details on the upcoming release, including release dates, announcements, features, and guidance on submitting feature requests, please visit the release roadmap: https://onnxruntime.ai/roadmap.

## Data/Telemetry

Windows distributions of this project may collect usage data and send it to Microsoft to help improve our products and services. See the [privacy statement](docs/Privacy.md) for more details.

## Contributions and Feedback

We welcome contributions! Please see the [contribution guidelines](CONTRIBUTING.md).

For feature requests or bug reports, please file a [GitHub Issue](https://github.com/Microsoft/onnxruntime/issues).

For general discussion or questions, please use [GitHub Discussions](https://github.com/microsoft/onnxruntime/discussions).

## Code of Conduct

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/)
or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## License

This project is licensed under the [MIT License](LICENSE).