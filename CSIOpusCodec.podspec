Pod::Spec.new do |s|
  s.name         = "CSIOpusCodec"
  s.version      = "0.0.1"
  s.summary      = "A short description of CSIOpusCodec."

  s.description  = <<-DESC
                   This Pod is built to package the existing opus codec wrapper
                   by Sam Leitch.
                   DESC

  s.homepage     = "https://github.com/oneam/OpusIPhoneTest"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = "Sam Leitch"
  s.platform     = :ios
  s.source       = { :git => "http://github.com/jessearmand/CSIOpusCodec.git", :tag => "0.0.1" }

  s.source_files  = "#{s.name}/*.{h,m,c}"
  s.public_header_files = "#{s.name}/*.h", "opus/include/*.h"
  s.preserve_paths = "opus/include/*.h", "opus/lib/libopus.a"
  s.vendored_libraries = 'opus/lib/libopus.a'
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/#{s.name}/opus/include", "LIBRARY_SEARCH_PATHS" => "${PODS_ROOT}/#{s.name}/opus/lib" }
end