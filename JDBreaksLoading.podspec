Pod::Spec.new do |s|
  s.name             = 'JDBreaksLoading'
  s.version          = '1.0.0'
  s.summary          = 'You can easily start up a little breaking game by one line.'
 
  s.description      = <<-DESC
Let User play little game when they are waiting.
                       DESC
 
  s.homepage         = 'https://github.com/jamesdouble/JDBreaksLoading'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JamesDouble' => 'jameskuo12345@gmail.com' }
  s.source           = { :git => 'https://github.com/jamesdouble/JDBreaksLoading.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '8.0'
  s.source_files = 'JDBreaksLoading/JDBreaksLoading/*'
 
end
