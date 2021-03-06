Pod::Spec.new do |s|
    s.name             = 'Yodo1FBSDKShareKit'
    s.version          = '3.0.0'
    s.summary          = 'Facebook SDK 分享[更新SDK v5.1.1]'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => "#{s.version}" + "/LICENSE" }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => "https://cocoapods.yodo1api.com/foundation/" + "#{s.name}" + "/"+ "#{s.version}" + ".zip" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'

    s.source_files = "#{s.version}" + '/FBSDKShareKit.framework/Headers/*.h'

    s.public_header_files = "#{s.version}" + '/FBSDKShareKit.framework/Headers/*.h'

    # s.resources = "#{s.version}" + '/*.bundle'

    s.vendored_frameworks = "#{s.version}" + '/FBSDKShareKit.framework'


    s.libraries = 'sqlite3', 'z', 'stdc++'
    s.compiler_flags = '-Dunix'
    s.requires_arc = false

    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit'
    
    s.dependency 'Yodo1FBSDKCoreKit','3.0.2'

end
