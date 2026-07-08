Pod::Spec.new do |s|
  s.name = 'InphinitCapacitorAttributionPlugin'
  s.version = '1.0.0'
  s.summary = 'Capacitor plugin providing Apple Search Ads Attribution Token'
  s.license = 'GPL-3.0-only'
  s.author = { 'inphinit' => 'inphinit.dev@gmail.com' }
  s.source = { :http => 'file://' + Dir.pwd }
  s.homepage = 'https://inphinit.space/capacitor-attribution-plugin'
  s.platform = :ios, '13.0'
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.static_framework = true
  s.ios.deployment_target  = '13.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'
end
