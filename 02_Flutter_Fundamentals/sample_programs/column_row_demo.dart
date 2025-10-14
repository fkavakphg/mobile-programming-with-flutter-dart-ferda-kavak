import 'package:flutter/material.dart';

void main() => runApp(const LayoutApp());

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Column & Row')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Above Row'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star),
                  SizedBox(width: 8),
                  Text('In a Row'),
                ],
              ),
              const Text('Below Row'),
            ],
          ),
        ),
      ),
    );
  }
}
