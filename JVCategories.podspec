#
# JVCategories by Jorge Valbuena
#

Pod::Spec.new do |s|
  s.name             = "JVCategories"
  s.version          = "0.1.0"
  s.summary          = "A short description of JVCategories."

  s.description      = "A set of Objc categories with utilities functions."

  s.homepage         = "https://github.com/JV17/JVCategories"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jorge Valbuena" => "jorge.valbuena@jorgedeveloper.com" }
  s.source           = { :git => "https://github.com/JV17/JVCategories.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/JVDev17'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resources = ['Pod/Assets/*.png']

  s.public_header_files = 'Pod/Classes/**/*.h'

end
