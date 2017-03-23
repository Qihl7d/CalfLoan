workspace 'CalfLoan.xcworkspace'
use_frameworks!
platform :ios, ‘8.0’

def shared_pods
    pod 'Masonry', '~> 1.0.2’
    pod 'SDWebImage', '~> 4.0.0’
    pod 'MJRefresh', '~> 3.1.12'
    pod 'shareSDK', '~> 0.0.2'
    pod 'MBProgressHUD', '~> 1.0.0'
    pod 'AFNetworking', '~> 3.1.0'
end

target 'CalfLoan' do
    project 'CalfLoan.xcodeproj'
    shared_pods
end

target 'XNSD_iOS_Common' do
    project './XNSD_iOS_Common/XNSD_iOS_Common.xcodeproj'
    shared_pods
end

target 'XNSD_iOS_Service' do
    project './XNSD_iOS_Service/XNSD_iOS_Service.xcodeproj'
    shared_pods
end
