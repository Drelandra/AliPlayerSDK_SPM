# AliyunPlayer
mkdir -p AliyunPlayer
mkdir -p AliyunPlayer/iphoneos
mkdir -p AliyunPlayer/iphonesim
cp -R AliyunPlayer.framework AliyunPlayer/iphoneos/AliyunPlayer.framework
cp -R AliyunPlayer.framework AliyunPlayer/iphonesim/AliyunPlayer.framework
xcrun lipo -remove x86_64 AliyunPlayer/iphoneos/AliyunPlayer.framework/AliyunPlayer -o AliyunPlayer/iphoneos/AliyunPlayer.framework/AliyunPlayer
xcrun lipo -remove i386 AliyunPlayer/iphonesim/AliyunPlayer.framework/AliyunPlayer -o AliyunPlayer/iphonesim/AliyunPlayer.framework/AliyunPlayer
xcrun xcodebuild -create-xcframework -framework AliyunPlayer/iphoneos/AliyunPlayer.framework -framework AliyunPlayer/iphonesim/AliyunPlayer.framework -output "AliyunPlayer.xcframework"
rm -rf AliyunPlayer

# AliyunMediaDownloader
mkdir -p AliyunMediaDownloader
mkdir -p AliyunMediaDownloader/iphoneos
mkdir -p AliyunMediaDownloader/iphonesim
cp -R AliyunMediaDownloader.framework AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework
cp -R AliyunMediaDownloader.framework AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework
xcrun lipo -remove x86_64 AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework/AliyunMediaDownloader -o AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework/AliyunMediaDownloader
xcrun lipo -remove i386 AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework/AliyunMediaDownloader -o AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework/AliyunMediaDownloader
xcrun xcodebuild -create-xcframework -framework AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework -framework AliyunPlayer/iphonesim/AliyunPlayer.framework -output "AliyunMediaDownloader.xcframework"
rm -rf AliyunMediaDownloader
