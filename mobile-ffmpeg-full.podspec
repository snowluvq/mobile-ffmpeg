Pod::Spec.new do |s|
  s.name         = "mobile-ffmpeg-full"
  s.version      = "4.4" # Cập nhật version thành 4.4
  s.summary      = "FFmpeg for iOS and Android"
  s.description  = <<-DESC
                   Mobile FFmpeg full build for iOS and Android. Provides a complete set of FFmpeg libraries compiled as xcframeworks for media processing.
                   DESC
  s.homepage     = "https://github.com/snowluvq/mobile-ffmpeg"
  s.license      = { :type => "LGPL-2.1", :file => "LICENSE" }
  s.author       = { "QuanNH" => "nh.quan56@gmail.com" }
  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/snowluvq/mobile-ffmpeg.git" }
  s.vendored_frameworks = "mobile-ffmpeg-full/*.xcframework"

  # Cấu hình kiến trúc và yêu cầu
  s.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386",
    "VALID_ARCHS" => "arm64 armv7 x86_64"
  }
  s.requires_arc = false
end