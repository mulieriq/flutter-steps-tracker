analyze :
	flutter analyze .
format_files:
	flutter format --set-exit-if-changed .
test:
	flutter test	
build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs 
run :
	flutter run	
pub_get:
	flutter pub get
clean:
	flutter clean
apk:
	flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
bundle:
	flutter build appbundle --target-platform android-arm,android-arm64,android-x64
generate_icons:
	flutter pub run flutter_launcher_icons:main	

.PHONY: analyze,format_files,build_runner,pub_get,clean,apk,bundle,generate_icons,run	
