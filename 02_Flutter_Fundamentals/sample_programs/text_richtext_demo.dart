import 'package:flutter/material.dart';

void main() => runApp(const TextRichTextApp());

class TextRichTextApp extends StatelessWidget {
  const TextRichTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text & RichText',
      home: Scaffold(
        appBar: AppBar(title: const Text('Text & RichText')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: const [
              Text(
                'Plain Text: style, maxLines, overflow etc.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: 'Rich '),
                    TextSpan(
                      text: 'Text ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'with '),
                    TextSpan(
                      text: 'styles',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
