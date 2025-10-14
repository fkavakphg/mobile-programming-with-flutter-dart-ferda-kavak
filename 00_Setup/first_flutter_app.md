# Your First Flutter App

Create from terminal:
```
flutter create hello_app
cd hello_app
flutter run
```

Replace lib/main.dart with:

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello Flutter')),
        body: const Center(child: Text('Welcome to Flutter!')),
      ),
    );
  }
}
```
