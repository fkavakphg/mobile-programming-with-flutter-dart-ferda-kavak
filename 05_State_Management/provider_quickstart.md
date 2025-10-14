# Provider Quickstart

`provider` is a popular package that uses InheritedWidgets under the hood.
It lets you access state anywhere in the widget tree.

**pubspec.yaml:**
```yaml
name: provider_counter_app
description: Counter with Provider
environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0

flutter:
  uses-material-design: true
```

**Run:**
```
flutter pub get
flutter run
```
