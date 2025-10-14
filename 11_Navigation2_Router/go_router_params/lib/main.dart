import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const GoRouterParamsApp());

class GoRouterParamsApp extends StatelessWidget {
  const GoRouterParamsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (_, __) => const HomePage(),
          routes: [
            GoRoute(
              path: 'details/:id',
              builder: (_, state) {
                final id = state.pathParameters['id']!;
                final msg = state.uri.queryParameters['msg'] ?? 'no message';
                return DetailsPage(id: id, message: msg);
              },
            ),
          ],
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details/42?msg=Hello'),
          child: const Text('Open Details with params'),
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String id;
  final String message;
  const DetailsPage({super.key, required this.id, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details $id')),
      body: Center(child: Text('Message: $message')),
    );
  }
}
