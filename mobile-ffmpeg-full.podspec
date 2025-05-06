Pod::Spec.new do |s|
  s.name         = "mobile-ffmpeg-full"
  s.version      = "4.4" # Thay bằng phiên bản của bạn
  s.summary      = "FFmpeg for iOS and Android"
  s.description  = <<-DESC
                   Mobile FFmpeg full build for iOS and Android.
                   DESC
  s.homepage     = "https://github.com/snowluvq/mobile-ffmpeg"
  s.license      = { :type => "LGPL-2.1", :file => "LICENSE" }
  s.author       = { "snbowluvq" => "nh.quan56@gmail.com" }
  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/snowluvq/mobile-ffmpeg.git", :tag => s.version.to_s }
  s.source_files = "./mobile-ffmpeg-full/**/*.{h,m,a,xcframework}"
  s.vendored_libraries = "lib/*.a" # Nếu có thư viện nhị phân
  s.pod_target_xcconfig = { "VALID_ARCHS" => "arm64 x86_64" }
end