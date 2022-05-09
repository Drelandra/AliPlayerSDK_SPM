# alivcffmpeg
mkdir -p alivcffmpeg
mkdir -p alivcffmpeg/iphoneos
mkdir -p alivcffmpeg/iphonesim
cp -R alivcffmpeg.framework alivcffmpeg/iphoneos/alivcffmpeg.framework
cp -R alivcffmpeg.framework alivcffmpeg/iphonesim/alivcffmpeg.framework
xcrun lipo -remove x86_64 ./alivcffmpeg/iphoneos/alivcffmpeg.framework/alivcffmpeg -o ./alivcffmpeg/iphoneos/alivcffmpeg.framework/alivcffmpeg
xcrun lipo -remove arm64 ./alivcffmpeg/iphonesim/alivcffmpeg.framework/alivcffmpeg -o ./alivcffmpeg/iphonesim/alivcffmpeg.framework/alivcffmpeg
xcrun lipo -remove armv7 ./alivcffmpeg/iphonesim/alivcffmpeg.framework/alivcffmpeg -o ./alivcffmpeg/iphonesim/alivcffmpeg.framework/alivcffmpeg
xcodebuild -create-xcframework -framework alivcffmpeg/iphoneos/alivcffmpeg.framework -framework alivcffmpeg/iphonesim/alivcffmpeg.framework -output "alivcffmpeg.xcframework"
rm -rf alivcffmpeg

# AliyunPlayer
mkdir -p AliyunPlayer
mkdir -p AliyunPlayer/iphoneos
mkdir -p AliyunPlayer/iphonesim
cp -R AliyunPlayer.framework AliyunPlayer/iphoneos/AliyunPlayer.framework
cp -R AliyunPlayer.framework AliyunPlayer/iphonesim/AliyunPlayer.framework
xcrun lipo -remove x86_64 ./AliyunPlayer/iphoneos/AliyunPlayer.framework/AliyunPlayer -o ./AliyunPlayer/iphoneos/AliyunPlayer.framework/AliyunPlayer
xcrun lipo -remove arm64 ./AliyunPlayer/iphonesim/AliyunPlayer.framework/AliyunPlayer -o ./AliyunPlayer/iphonesim/AliyunPlayer.framework/AliyunPlayer
xcrun lipo -remove armv7 ./AliyunPlayer/iphonesim/AliyunPlayer.framework/AliyunPlayer -o ./AliyunPlayer/iphonesim/AliyunPlayer.framework/AliyunPlayer
xcodebuild -create-xcframework -framework AliyunPlayer/iphoneos/AliyunPlayer.framework -framework AliyunPlayer/iphonesim/AliyunPlayer.framework -output "AliyunPlayer.xcframework"
rm -rf AliyunPlayer

# AliyunMediaDownloader
mkdir -p AliyunMediaDownloader
mkdir -p AliyunMediaDownloader/iphoneos
mkdir -p AliyunMediaDownloader/iphonesim
cp -R AliyunMediaDownloader.framework AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework
cp -R AliyunMediaDownloader.framework AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework
xcrun lipo -remove x86_64 ./AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework/AliyunMediaDownloader -o ./AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework/AliyunMediaDownloader
xcrun lipo -remove arm64 ./AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework/AliyunMediaDownloader -o ./AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework/AliyunMediaDownloader
xcrun lipo -remove armv7 ./AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework/AliyunMediaDownloader -o ./AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework/AliyunMediaDownloader
xcodebuild -create-xcframework -framework AliyunMediaDownloader/iphoneos/AliyunMediaDownloader.framework -framework AliyunMediaDownloader/iphonesim/AliyunMediaDownloader.framework -output "AliyunMediaDownloader.xcframework"
rm -rf AliyunMediaDownloader
