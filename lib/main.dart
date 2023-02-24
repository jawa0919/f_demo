import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'demo01_page.dart';
import 'demo02_page.dart';
import 'demo03_page.dart';

void main() {
  runApp(const MyApp());
}

class AppRoute {
  AppRoute._();
  static final routerConfig = GoRouter(
    routes: routes,
  );

  static final routes = [
    GoRoute(
      path: '/',
      builder: (_, __) => const MyHomePage(title: "Demo List"),
    ),
    GoRoute(path: '/demo01', builder: (_, __) => const Demo01Page()),
    GoRoute(path: '/demo02', builder: (_, __) => const Demo02Page()),
    GoRoute(path: '/demo03', builder: (_, __) => const Demo03Page()),
  ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: AppRoute.routerConfig,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        children: [
          _addDemo(context),
          Center(
            child: ElevatedButton(
              child: const Text("Web Text Field Demo01"),
              onPressed: () {
                GoRouter.of(context).go("/demo01");
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text("Web WillPopScope Demo02"),
              onPressed: () {
                GoRouter.of(context).push("/demo02");
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text("Auto Audio Demo03"),
              onPressed: () {
                GoRouter.of(context).push("/demo03");
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  ConstrainedBox _addDemo(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.headline4),
        ],
      ),
    );
  }
}
