#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
s.name             = "TVSquared"
s.version          = '1.0.0'
s.author           = { "Marcus Smith" => "m_badenochsmith@yahoo.co.uk" }
s.source           = { :git => "https://github.com/tvsquared/tvsquared-collector-ios.git" }
s.summary 	     = "TVSquared"
s.homepage         = "https://app.tvsquared.com"
s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }

s.ios.deployment_target = '7.0'
s.osx.deployment_target = '10.7'
s.requires_arc = false

s.source_files = 'core/src/gen/objc/**/*.{h,m}'
s.exclude_files = 'core/src/gen/objc/*Test.{h,m}'
s.resources = 'core/src/main/resources/*'

s.public_header_files = 'core/src/gen/objc/**/*.h'
s.header_mappings_dir = 'core/src/gen/objc'

end