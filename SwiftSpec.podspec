Pod::Spec.new do |s|
  s.name             = 'SwiftSpec'
  s.version          = '0.0.1'
  s.summary          = 'Specification pattern in swift.'
  s.description      = <<-DESC
SwiftSpec was written to make implementing the specification pattern easier. Provides convenient specifications for numbers, strings, etc.
                       DESC
  
  s.homepage         = 'https://github.com/JustinGuedes/SwiftSpec'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JustinGuedes' => 'justin.guedes@gmail.com' }
  s.source           = { :git => 'https://github.com/JustinGuedes/SwiftSpec.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/JustinJGuedes'
  
  s.ios.deployment_target = '8.0'
  s.default_subspec = 'All'

  s.subspec 'Core' do |sp|
    sp.source_files = 'SwiftSpec/Classes/Core/**/*'
  end

  s.subspec 'All' do |sp|
    sp.source_files = 'SwiftSpec/Classes/**/*'
  end

end
