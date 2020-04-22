Pod::Spec.new do |s|

  s.name         = "HeenaSDKDemo"
  s.version      = "0.0.3"
  s.summary      = "This is used for demo purpose"
  s.homepage     = "https://github.com/Heena-Thaper/HeenaSDKDemo.git"
  s.license      = "MIT"
  s.author       = { "Heena Thaper" => "missheena96@gmail.com" }
  s.source       = { :git => "https://github.com/Heena-Thaper/HeenaSDKDemo.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '13.0'
  s.source_files = "HeenaSDKDemo/**/*.{swift}"
  s.swift_version = '4'
  s.resources = "HeenaSDKDemo/**/*.{png,jpeg,jpg,storyboard,xib,xcassets,plist}"
  s.framework = "UIKit"
  
end

