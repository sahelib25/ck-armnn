[![Travis Build Status](https://travis-ci.org/ctuning/ck-armnn.svg?branch=master)](https://travis-ci.org/ctuning/ck-armnn)

*This fork is maintained by [Krai Ltd](https://krai.ai).*

# ArmNN installation

To install a particular version of ArmNN we have to combine three kinds of tags:

- Frontend-related tags (based on supported ArmNN parsers): `tf`, `tflite`, `onnx`. These can be combined.

- Backend-related tags (based on a specific build of ArmCL): `neon`, `opencl`. These can be combined or both missing (reference).

- Version/Release-related tags: `rel.21.02` (a particular frozen release), `release` (the latest stable release), `dev` (the live development branch). These are mutually exclusive. Exactly one Version/Release tag must be present.

## Examples

The live development version supporting the TFLite frontend and Neon backend:
```
$ ck install package --tags=lib,armnn,tflite,neon,dev
```

The latest stable release supporting the TensorFlow frontend and OpenCL backend:
```
$ ck install package --tags=lib,armnn,tf,opencl,release
```

The 21.02 release supporting the TFLite and ONNX frontends and no optimized backends (i.e. reference):
```
$ ck install package --tags=lib,armnn,tflite,onnx,rel.21.02
```
The 21.05 release supporting the TFLite and ONNX frontends and no optimized backends (i.e. reference):
```
$ ck install package --tags=lib,armnn,tflite,onnx,rel.21.05
```
The 21.08 release supporting the TFLite and ONNX frontends and no optimized backends (i.e. reference):
```
$ ck install package --tags=lib,armnn,tflite,onnx,rel.21.08
```
The 21.11 release supporting the TFLite and ONNX frontends and no optimized backends (i.e. reference):
```
$ ck install package --tags=lib,armnn,tflite,onnx,rel.21.11
```
