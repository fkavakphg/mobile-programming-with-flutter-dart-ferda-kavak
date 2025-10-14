import 'package:flutter/material.dart';

void main() => runApp(const ValueNotifierCounterApp());

class ValueNotifierCounterApp extends StatelessWidget {
  const ValueNotifierCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ValueCounterPage(),
    );
  }
}

class ValueCounterPage extends StatefulWidget {
  const ValueCounterPage({super.key});

  @override
  State<ValueCounterPage> createState() => _ValueCounterPageState();
}

class _ValueCounterPageState extends State<ValueCounterPage> {
  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  @override
  void dispose() {
    _count.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValueNotifier Counter')),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: _count,
          builder: (_, value, __) => Text('Count: $value', style: const TextStyle(fontSize: 36)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _count.value++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
