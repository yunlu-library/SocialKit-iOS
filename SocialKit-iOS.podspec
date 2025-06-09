Pod::Spec.new do |s|
  s.name             = 'SocialKit-iOS'
  s.version          = '0.0.1'
  s.summary          = 'A short description of SocialKit-iOS.'
  s.homepage         = 'https://github.com/dppo/SocialKit-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dppo' => 'xiaogao235@gmail.com' }
  s.source           = { :git => 'https://github.com/dppo/SocialKit-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'SocialKit-iOS/Classes/**/*'
  
  s.dependency "WechatOpenSDK-XCFramework"
  s.vendored_frameworks = ['SocialKit-iOS/libs/*.framework', 'SocialKit-iOS/libs/*.xcframework']
  s.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries = 'iconv', 'sqlite3', 'stdc++', 'z'
  s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=macosx*]' => 'x86_64 arm64' }
  s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=macosx*]' => 'x86_64 arm64' }
  
end
