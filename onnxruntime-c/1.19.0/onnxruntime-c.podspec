
Pod::Spec.new do |spec|
    spec.name                   = "onnxruntime-c"
    spec.version                = "1.19.0"
    spec.authors                = { "ONNX Runtime" => "onnxruntime@microsoft.com" }
    spec.source                 = { :http => "https://github.com/mybigday/onnxruntime-bricks/releases/download/v1.19.0-bricks/onnxruntime-c-tvos.zip" }
    spec.license                = { :type => "MIT", :file => "LICENSE" }
    spec.homepage               = "https://github.com/microsoft/onnxruntime"
    spec.summary                = "ONNX Runtime C/C++ Pod"
    spec.description            = "A pod for the ONNX Runtime C/C++ library."
    spec.platform               = :tvos, '13.0'
    spec.static_framework       = true
    spec.vendored_frameworks = "onnxruntime.xcframework"
    spec.weak_framework = ['CoreML']
    spec.source_files = "Headers/*.h"
    spec.preserve_paths = "LICENSE"
    spec.library = "c++"
    spec.pod_target_xcconfig = {
      "OTHER_CPLUSPLUSFLAGS" => "-fvisibility=hidden -fvisibility-inlines-hidden",
    }
end
