import 'package:flutter/material.dart';

void main() => runApp(const PassDataApp());

class PassDataApp extends StatelessWidget {
  const PassDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pass Data - Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => const DetailsPage(message: 'Hello from Home!'),
            ));
          },
          child: const Text('Open Details with data'),
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String message;
  const DetailsPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(child: Text(message, style: const TextStyle(fontSize: 24))),
    );
  }
}
