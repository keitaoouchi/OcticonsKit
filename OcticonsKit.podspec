Pod::Spec.new do |s|
  s.name             = 'OcticonsKit'
  s.version          = '1.1.0'
  s.summary          = 'Octicons for Swift and Objective-C with type safed manner.'
  s.homepage         = 'https://github.com/keitaoouchi/OcticonsKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'keita.oouchi' => 'keita.oouchi@gmail.com' }
  s.source           = { :git => 'https://github.com/keitaoouchi/OcticonsKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.source_files = 'OcticonsKit/Classes/**/*'
  s.resource_bundles = {
     'OcticonsKit' => ['OcticonsKit/Assets/*.ttf']
  }
end
