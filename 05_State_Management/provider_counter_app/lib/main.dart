import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => CounterModel(),
    child: const ProviderCounterApp(),
  ),
);

class ProviderCounterApp extends StatelessWidget {
  const ProviderCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void inc() { _count++; notifyListeners(); }
  void dec() { _count--; notifyListeners(); }
  void reset() { _count = 0; notifyListeners(); }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>();
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Counter')),
      body: Center(
        child: Text('Count: ${counter.count}', style: const TextStyle(fontSize: 36)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () => context.read<CounterModel>().inc(), child: const Icon(Icons.add)),
          const SizedBox(height: 8),
          FloatingActionButton(onPressed: () => context.read<CounterModel>().dec(), child: const Icon(Icons.remove)),
          const SizedBox(height: 8),
          FloatingActionButton(onPressed: () => context.read<CounterModel>().reset(), child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
