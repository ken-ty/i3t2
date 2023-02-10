import 'package:flutter/material.dart';
import 'package:i3t2/src/core/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Routes.initialRoute, routes: Routes.routes);
  }
}
