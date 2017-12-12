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

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/Limon-O-O/JPushExtensionKit.git", :tag => "#{s.version}" }

  s.vendored_frameworks = 'Source/JPushExtensionKit.framework'

  s.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/JPushExtensionKit/**\"" }

  s.frameworks = 'UIKit', 'CFNetwork', 'CoreFoundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Foundation', 'Security', 'UserNotifications'
  s.libraries = 'z','resolv'

  s.requires_arc = false

  s.prepare_command     = <<-EOF
  mkdir Source/JPushExtensionKit.framework/Modules
  touch Source/JPushExtensionKit.framework/Modules/module.modulemap
  cat <<-EOF > Source/JPushExtensionKit.framework/Modules/module.modulemap
  framework module JPushExtensionKit {
      header "JPushNotificationExtensionService.h"

      export *

      link "z"
      link "resolv"
  }
  \EOF
  EOF
end