Pod::Spec.new do |s|
  s.name         = "sapataz"
  s.version      = "0.0.1"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.summary      = "Sapataz is a personal set of utilities classes in Swift."
  s.homepage     = "https://github.com/jjorgemoura/sapataz"
  s.documentation_url = 'http://jjorgemoura.com'

  s.author             = { "Jorge Moura" => "hello@jjorgemoura.com" }
  s.social_media_url   = "https://twitter.com/zindonz"

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.12"
  s.watchos.deployment_target = "3.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/jjorgemoura/sapataz.git", :tag => s.version }
  s.source_files  = "Source/*.swift"

  s.framework  = "Foundation"
  s.requires_arc = true
end
