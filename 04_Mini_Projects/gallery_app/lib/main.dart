import 'package:flutter/material.dart';

void main() => runApp(const GalleryApp());

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Mini Gallery')),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.image),
              title: Text('Image #${index + 1}'),
              subtitle: const Text('Placeholder item'),
            );
          },
        ),
      ),
    );
  }
}
