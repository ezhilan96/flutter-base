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

### App name change:
dart run rename_app:main all="App Name"\
dart run rename_app:main android="Anroid Name" ios="IOS Name"\
dart run change_app_package_name:main com.new.package.name\
dart run change_app_package_name:main com.new.package.name --android\
dart run change_app_package_name:main com.new.package.name --ios

### Splash image generation:
dart run flutter_native_splash:create --flutter_native_splash.yaml

### App snippets:
located at /app_snippets.json

## Checklist
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
Debug symbols:
[YOUR_PROJECT]\build\app\intermediates\merged_native_libs\release\out\lib: 
    arm64-v8a
    armeabi-v7a
    x86_64
for macOS: zip -d Archive.zip "__MACOSX*"

flutter run --dart-define=ENV=uat
flutter run --dart-define=ENV=prod

