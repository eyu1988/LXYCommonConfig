Pod::Spec.new do |s|

  s.name         = "LXYCommonConfig"
  s.version      = "0.0.3"
  s.summary      = "LXYCommonConfig summarizes some common config files."
  s.description  = <<-DESC
    LXYCommonConfig is designed to facilitate some common config, like layer corner.
                   DESC

  s.homepage     = "https://github.com/eyu1988/LXYCommonConfig"
  s.license      = "MIT"
  
  s.author       = { "Shadow Walker" => "lucas_china@sina.com" }
  # s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/eyu1988/LXYCommonConfig.git", :tag => "#{s.version}" }

  # s.source_files = "LXYLayerCorner/LXYLayerCorner/*.{h,m}"
 
  s.requires_arc = true

  s.subspec 'LXYLayerCorner' do |layercorner|
    layercorner.source_files = 'LXYLayerCorner/LXYLayerCorner/*.{h,m}'
  end

end
