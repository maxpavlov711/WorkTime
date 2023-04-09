Pod::Spec.new do |spec|
  spec.name          = 'UIComponents'
  spec.module_name   = 'UIComponents'
  spec.version       = '0.1.0'
  spec.summary       = 'A short description of UIComponents'
  spec.swift_version = '5.0'
  spec.homepage      = 'https://github.com/maxpavlov711/UIComponents'
  spec.license       = 'MCI'
  spec.authors       = { 'Max Pavlov' => 'https://github.com/maxpavlov711' }
  spec.source        = { :git => 'https://github.com/maxpavlov711/AuthSDK.git', :tag => spec.version.to_s }
  spec.platform      = :ios, '14.0'
  spec.ios.deployment_target  = '14.0'
  
  spec.source_files  = '**/*.{swift,h,m,xib,storyboard}'
  spec.resources = ["Resources/*.{strings,xcassets,stringsdict}","Resources/**/*.{strings,stringsdict}"]


  spec.dependency 'SnapKit'
end