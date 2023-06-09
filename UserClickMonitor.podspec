#
# Be sure to run `pod lib lint UserClickMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UserClickMonitor'
  s.version          = '1.4.0'
  s.summary          = 'A short description of UserClickMonitor.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "this pod is helping to monitor users click event"

  s.homepage         = 'https://github.com/khyatimirani/UserClickMonitor.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'khyatimirani' => 'khyatimirani1995@gmail.com' }
  s.source           = { :git => 'https://github.com/khyatimirani/UserClickMonitor.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files   = 'Classes/**/*'
  
end
