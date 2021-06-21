require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'src/package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-slider"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/wordpress-mobile/react-native-slider.git", :tag => "v#{s.version}" }
  s.source_files  = "src/ios/**/*.{h,m}"

  s.dependency 'React'
end
