
Pod::Spec.new do |s|
  s.name             = 'ApplicationMonitor'
  s.version          = '0.4.3'
  s.summary          = 'Monitor life-cycle for UI (use method swizzling)'
  s.homepage         = 'https://github.com/muukii/ApplicationMonitor'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'muukii' => 'm@muukii.me' }
  s.source           = { :git => 'https://github.com/muukii/ApplicationMonitor.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/muukii0803'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Sources/ApplicationMonitor/**/*.swift'
  s.swift_versions = ["5.3", "5.4", "5.5"]
end
