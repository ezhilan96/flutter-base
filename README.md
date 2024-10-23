# flutter_base

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Project commands:

build runner:
flutter pub run build_runner build --delete-conflicting-outputs

app name change:
dart run change_app_package_name:main com.new.package.name
dart run change_app_package_name:main com.new.package.name --android
dart run change_app_package_name:main com.new.package.name --ios

Splash image generation:
dart run flutter_native_splash:create --flutter_native_splash.yaml