import 'package:flutter/material.dart';

void main() => runApp(const ExplicitApp());

class ExplicitApp extends StatelessWidget {
  const ExplicitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BouncePage(),
    );
  }
}

class BouncePage extends StatefulWidget {
  const BouncePage({super.key});

  @override
  State<BouncePage> createState() => _BouncePageState();
}

class _BouncePageState extends State<BouncePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _scale = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explicit Animation (Bounce)')),
      body: Center(
        child: ScaleTransition(
          scale: _scale,
          child: const FlutterLogo(size: 120),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward(from: 0);
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
