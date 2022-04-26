# AliyunPlayer
mkdir -p AliyunPlayer
mkdir -p AliyunPlayer/iphoneos
mkdir -p AliyunPlayer/iphonesim
cp -R AliyunPlayer.framework AliyunPlayer/iphoneos/AliyunPlayer.framework
cp -R AliyunPlayer.framework AliyunPlayer/iphonesim/AliyunPlayer.framework
xcrun xcodebuild -create-xcframework -framework AliyunPlayer/iphoneos/AliyunPlayer.framework -framework AliyunPlayer/iphonesim/AliyunPlayer.framework -output "AliyunPlayer.xcframework"
rm -rf AliyunPlayer
