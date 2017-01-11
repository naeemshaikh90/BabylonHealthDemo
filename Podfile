# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'BabylonHealthDemo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for BabylonHealthDemo
   pod 'SwiftGen'
   pod 'RxSwift'
   pod 'Moya'
   pod 'Moya/RxSwift'
   pod 'Moya-ObjectMapper/RxSwift', :git => 'https://github.com/ivanbruel/Moya-ObjectMapper'
   pod 'Reusable'

  target 'BabylonHealthDemoTests' do
    inherit! :search_paths
    # Pods for testing
    
    pod 'Quick'
    pod 'Nimble'
    pod 'Fakery'
    pod 'ObjectMapper'
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
