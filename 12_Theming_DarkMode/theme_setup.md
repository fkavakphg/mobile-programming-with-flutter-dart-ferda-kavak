# Theme Setup

```dart
return MaterialApp(
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
    useMaterial3: true,
  ),
  darkTheme: ThemeData.dark(),
  themeMode: ThemeMode.system, // or .light / .dark
);
```
