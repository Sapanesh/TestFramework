Pod::Spec.new do |s|
  s.name             = “TestFramework”
  s.version          = “0.0.1”
  s.summary          = "Test”
  s.homepage         = ""
  s.license          = 'MIT'
  s.author           = { “Sapanesh” => “sapanesh@sphinx-solution.com” }
  s.source           = { :git => "https://github.com/Sapanesh/TestFramework.git", :tag => s.version.to_s }
  s.platform     = :ios, ‘8.0’
  s.requires_arc = true
  s.vendored_frameworks = 'A2ISurveyFramework.framework'
end