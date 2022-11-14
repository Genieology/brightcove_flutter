#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint brightcove_ios.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'brightcove_ios'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = 'Brightcove flutter genieology bridge.'
  s.homepage         = 'http://blinx.com'
  s.license          = 'MIT'
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' } 
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Brightcove-Player-Core/Framework'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
