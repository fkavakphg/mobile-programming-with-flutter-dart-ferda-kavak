import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const ImplicitApp());

class ImplicitApp extends StatelessWidget {
  const ImplicitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ImplicitPage(),
    );
  }
}

class ImplicitPage extends StatefulWidget {
  const ImplicitPage({super.key});

  @override
  State<ImplicitPage> createState() => _ImplicitPageState();
}

class _ImplicitPageState extends State<ImplicitPage> {
  double _size = 100;
  BorderRadius _radius = BorderRadius.circular(16);

  void _randomize() {
    final r = Random();
    setState(() {
      _size = 80 + r.nextInt(160).toDouble();
      _radius = BorderRadius.circular(r.nextInt(50).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: _radius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _randomize,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
