Pod::Spec.new do |s|
  s.name     = 'UIResponder+MNActions'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.platform = :ios, '5.0'
  s.summary  = 'UIResponder event propagation.'
  s.homepage = 'http://github.com/madninja/UIResponder+MNActions'
  s.author   = { 'Marc Nijdam' => 'marc@imadjine.com' }
  s.source   = { :git => 'https://github.com/madninja/UIResponder-MNActions.git', :tag => s.version.to_s }
  s.description  = 'Handy UIResponder event chaining.'
  s.source_files = 'UIResponder+MNActions/*.{h,m}'
  s.requires_arc = false
end