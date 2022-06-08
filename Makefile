analyze :
	flutter analyze .
format_files:
	flutter format --set-exit-if-changed .
test:
	flutter test	
build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs 
pub_get:
	flutter pub get
clean:
	flutter clean
apk:
	flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
bundle:
	flutter build appbundle --target-platform android-arm,android-arm64,android-x64

.PHONY: analyze,format_files,build_runner,pub_get,clean,apk,bundle		
