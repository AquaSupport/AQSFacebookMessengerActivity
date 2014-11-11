Pod::Spec.new do |s|
  s.name         = "AQSFacebookMessengerActivity"
  s.version      = "0.1.0"
  s.summary      = "[iOS] UIActivity Class for sharing with Facebook Messeger"
  s.homepage     = "https://github.com/AquaSupport/AQSFacebookMessengerActivity"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/AquaSupport/AQSFacebookMessengerActivity.git", :tag => "v0.1.0" }
  s.source_files  = "AQSFacebookMessengerActivity/Classes/**/*.{h,m}"
  s.resources = ["AQSFacebookMessengerActivity/Classes/**/*.png"]
  s.requires_arc = true
  s.platform = "ios", '7.0'

  s.dependency "Facebook-iOS-SDK"
end