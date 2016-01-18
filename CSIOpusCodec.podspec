Pod::Spec.new do |s|
  s.name         = "CSIOpusCodec"
  s.version      = "0.0.6"
  s.summary      = "Another Objective-C wrapper for Opus Codec."

  s.description  = <<-DESC
                   This Pod is built to package the existing opus codec wrapper
                   by Sam Leitch.
                   DESC

  s.homepage     = "https://github.com/oneam/OpusIPhoneTest"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "Sam Leitch"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/yalnazov/CSIOpusCodec.git", :tag => "0.0.6" }
  s.requires_arc = true

  s.source_files  = "#{s.name}/*.{h,m,c}", "opus/include/*.h"
  s.header_dir = "opus/include"
  s.header_mappings_dir = "opus/include"
  s.public_header_files = "#{s.name}/*.h", "opus/include/*.h"
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/#{s.name}/opus/include" }
  s.dependencies = { 'libopus-patched-config' => '~> 1.1' }
end
