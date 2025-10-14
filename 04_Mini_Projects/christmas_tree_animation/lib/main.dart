import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const TreeApp());

class TreeApp extends StatelessWidget {
  const TreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TreePage(),
    );
  }
}

class TreePage extends StatefulWidget {
  const TreePage({super.key});

  @override
  State<TreePage> createState() => _TreePageState();
}

class _TreePageState extends State<TreePage> {
  int _tick = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() => _tick++);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.red, Colors.green, Colors.yellow, Colors.blue];
    Color c() => colors[_tick % colors.length];

    return Scaffold(
      appBar: AppBar(title: const Text('Christmas Lights')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, size: 48, color: c()),
            const SizedBox(height: 8),
            Icon(Icons.change_history, size: 64, color: c()),
            Icon(Icons.change_history, size: 84, color: c()),
            Icon(Icons.change_history, size: 104, color: c()),
            const SizedBox(height: 16),
            Text('Tick: $_tick'),
          ],
        ),
      ),
    );
  }
}
