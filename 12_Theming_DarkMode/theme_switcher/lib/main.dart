import 'package:flutter/material.dart';

void main() => runApp(const ThemeSwitcherApp());

class ThemeSwitcherApp extends StatefulWidget {
  const ThemeSwitcherApp({super.key});

  @override
  State<ThemeSwitcherApp> createState() => _ThemeSwitcherAppState();
}

class _ThemeSwitcherAppState extends State<ThemeSwitcherApp> {
  ThemeMode _mode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: _mode,
      home: Scaffold(
        appBar: AppBar(title: const Text('Theming & Dark Mode')),
        body: Center(child: Text('Theme mode: $_mode')),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () => setState(() => _mode = ThemeMode.light), child: const Text('Light')),
              ElevatedButton(onPressed: () => setState(() => _mode = ThemeMode.dark), child: const Text('Dark')),
              ElevatedButton(onPressed: () => setState(() => _mode = ThemeMode.system), child: const Text('System')),
            ],
          ),
        ),
      ),
    );
  }
}
