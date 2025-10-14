import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const PrefsCounterApp());

class PrefsCounterApp extends StatelessWidget {
  const PrefsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _count = prefs.getInt('count') ?? 0);
  }

  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('count', _count);
  }

  void _inc() { setState(() => _count++); _save(); }
  void _reset() { setState(() => _count = 0); _save(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Persistent Counter')),
      body: Center(child: Text('Count: $_count', style: const TextStyle(fontSize: 36))),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: _inc, child: const Icon(Icons.add)),
          const SizedBox(height: 8),
          FloatingActionButton(onPressed: _reset, child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
