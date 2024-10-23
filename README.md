# flutter_base

A Base Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

## Project commands

### Build runner:
flutter pub run build_runner build --delete-conflicting-outputs

### App name change:
dart run change_app_package_name:main com.new.package.name\
dart run change_app_package_name:main com.new.package.name --android\
dart run change_app_package_name:main com.new.package.name --ios

### Splash image generation:
dart run flutter_native_splash:create --flutter_native_splash.yaml