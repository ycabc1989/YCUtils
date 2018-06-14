Pod::Spec.new do |s|  
  s.name         = "YCUtils"  
  s.version      = "1.2.2"  
  s.summary      = "A Simple Objective-C Utils"  
  s.homepage     = "https://github.com/ycabc1989/YCUtils.git"  
  s.license      = "MIT"  
  s.author       = { "ycabc1989" => "ycabc1989@163.com" }  
  s.platform     = :ios, "8.0"  
  s.source       = { :git => "https://github.com/ycabc1989/YCUtils.git", :tag => s.version }  
  s.public_header_files = "YCUtilsLibray/YCUtils.h"
  s.source_files  = "YCUtilsLibray/YCUtils.h"
  s.framework  = "UIKit"
  s.requires_arc = true   
end  