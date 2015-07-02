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
s.source           = { :git => "git@github.com:hambroperks/tvsquared-collector-ios.git" }
s.summary 	     = "TVSquared"
s.homepage         = "https://app.tvsquared.com"
s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }

s.source_files = 'TVSquaredCollectorSample/*.{h,m}'

end
