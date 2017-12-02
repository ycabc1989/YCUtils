Pod::Spec.new do |s|
  s.name         = "YCUtils"
  s.version      = "1.1"
  s.summary      = "lib for ios."
  s.homepage     = "https://github.com/ycabc1989/YCUtils.git"
  s.license      = "MIT"
  s.author       = { "ycabc1989" => "ycabc1989@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ycabc1989/YCUtils.git", :tag => "1.1" }
  s.source_files  = "YCUtils", "YCUtils/**/*.{h,m}"
  s.public_header_files = 'YCUtils/**/YCUtils.h'
  s.frameworks = "CommonCrypto"
end
