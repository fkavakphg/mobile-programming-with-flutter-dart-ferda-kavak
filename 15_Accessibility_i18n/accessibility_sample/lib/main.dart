import 'package:flutter/material.dart';

void main() => runApp(const A11yApp());

class A11yApp extends StatelessWidget {
  const A11yApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Accessibility Basics')),
        body: Center(
          child: Semantics(
            label: 'Favorite button, toggles a heart icon',
            button: true,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
              label: const Text('Favorite'),
            ),
          ),
        ),
      ),
    );
  }
}
