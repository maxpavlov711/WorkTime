Pod::Spec.new do |spec|
  spec.name          = 'AuthSDK'
  spec.module_name   = 'AuthSDK'
  spec.version       = '0.1.0'
  spec.summary       = 'A short description of AuthSDK'
  spec.swift_version = '5.0'
  spec.homepage      = 'https://github.com/maxpavlov711/AuthSDK'
  spec.license       = 'MCI'
  spec.authors       = { 'Max Pavlov' => 'https://github.com/maxpavlov711' }
  spec.source        = { :git => 'https://github.com/maxpavlov711/AuthSDK.git', :tag => spec.version.to_s }
  spec.platform      = :ios, '14.0'
  spec.ios.deployment_target  = '14.0'
  spec.source_files  = '**/*.{swift,h,m,xib,storyboard}'
  spec.resources = ["Resources/*.{strings,xcassets,stringsdict}","Resources/**/*.{strings,stringsdict}"]


  spec.dependency 'R.swift'
end