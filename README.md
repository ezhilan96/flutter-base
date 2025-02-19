# flutter_base

A Base Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

## Libraries

* flutter_native_splash
* http
* freezed
* get_it
* shared_preferences
* flutter_bloc
* connectivity_plus
* google_maps_flutter
* flutter_polyline_points
* intl
* fluttertoast
* flutter_svg

## Project commands

### Build runner:
flutter pub run build_runner build --delete-conflicting-outputs

### App/package rename:

// dart run rename_app:main all="App Name"\
// dart run rename_app:main android="Anroid Name" ios="IOS Name"\

flutter pub global activate rename\
rename setAppName --targets ios,android --value "YourAppName"\

flutter pub add -d change_app_package_name\
dart run change_app_package_name:main com.new.package.name\
dart run change_app_package_name:main com.new.package.name --android\
dart run change_app_package_name:main com.new.package.name --ios

### Splash image generation:
flutter pub add flutter_native_splash\
dart run flutter_native_splash:create --flutter_native_splash.yaml

### App snippets:
located at /app_snippets.json

## New app checklist
* Change package name
* Change appName
* Change app icon
* Change splash image
* Add app snippets & remove file
* Remove libraries*
* Remove Platform channel implementation & google_api_key*
* Change base url
* Firebase configuration

## Deployment
flutter build appbundle\
flutter build ipa\
Debug symbols:\
[YOUR_PROJECT]\build\app\intermediates\merged_native_libs\release\out\lib:\
&emsp;arm64-v8a\
&emsp;armeabi-v7a\
&emsp;x86_64\
for macOS: zip -d Archive.zip "__MACOSX*"

flutter run --dart-define=ENV=uat\
flutter run --dart-define=ENV=prod\

## Firebase integration [(FlutterFire)](https://firebase.flutter.dev/docs/overview)
Create Firebase project in [console](https://console.firebase.google.com)\
Install [Firebase cli](https://firebase.google.com/docs/cli)\
firebase logout && firebase login\
dart pub global activate flutterfire_cli\
Then, at the root of your Flutter project directory,\
&emsp;flutterfire configure\
flutter pub add firebase_core\
add below lines in main.dart,\
&emsp;WidgetsFlutterBinding.ensureInitialized();\
&emsp;await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

## FCM Setup
flutter pub add firebase_messaging\
### iOS ([APNs Setup](https://firebase.flutter.dev/docs/messaging/apple-integration))