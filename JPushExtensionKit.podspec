Pod::Spec.new do |s|

  s.name         = "JPushExtensionKit"
  s.version      = "3.0.7"
  s.summary      = "JPushExtensionKit.."
  s.description  = <<-DESC
                    JPushExtensionKit...
                   DESC

  s.homepage     = "https://github.com/Limon-O-O/JPushExtensionKit"
  s.license      = "MIT"
  s.author       = { "Limon" => "fengninglong@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source              = { :http => "https://sdkfiledl.jiguang.cn/cocoapods/jpushExtension/JPush-iOS-3.0.7.zip" }

  s.source_files = '*/*.h'
  s.vendored_libraries = "*/*.a"

  s.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/JPushExtensionKit/**\"" }

  s.frameworks = 'UIKit', 'CFNetwork', 'CoreFoundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Foundation', 'Security', 'UserNotifications'
  s.libraries = 'z','resolv'

  s.requires_arc = false

end