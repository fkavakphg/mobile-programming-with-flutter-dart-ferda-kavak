# Setup Steps (CLI)

1. Install the Firebase CLI and FlutterFire CLI:
```
dart pub global activate flutterfire_cli
```
2. Create a Firebase project in the Firebase Console.
3. Run:
```
flutterfire configure
```
4. This generates `firebase_options.dart` for your platforms. Import and call `Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)`.
