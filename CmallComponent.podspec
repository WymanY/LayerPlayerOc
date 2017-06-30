#
# Be sure to run `pod lib lint TudeSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CmallComponent'
  s.version          = '0.2.0'
  s.summary          = 'CmallComponent by Cmall'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'CmallComponent And RendingView by Objective-C'

  s.description      = <<-DESC
    'Cmall TudeSDK by JS'
                       DESC

  s.homepage         = 'http://git.cmall.com/opensdk/opensdk_iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'momo605654602@gmail.com' => 'moyunmo@hotmail.com' }
  s.source           = { :git => 'https://gitex.cmall.com/devloy/CmallComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CmallComponent/Classes/**/*'
  
  # s.resource_bundles = {t
  #    'TudeSDK' => ['TudeSDK/TudeSDK.bundle/*']
  # }
  s.resources    = 'CmallComponent/CmallComponent.bundle'
  s#.prefix_header_file = "CmallSDK/Classes/CmallComponentHeader.pch"
  #s.public_header_files = 'CmallSDK/Classes/TDError.h','CmallSDK/Classes/CmallSDK.h','CmallSDK/Classes/CmallSDKProtocol.h'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'
  s.requires_arc = true

  s.dependency 'WebViewJavascriptBridge', '~> 6.0.2'
  s.dependency 'Mantle', '2.1.0'
  s.dependency 'SDWebImage', '3.8.2'
  s.dependency 'Masonry', '0.6.4'
  s.dependency 'ReactiveCocoa', '2.5'

end
