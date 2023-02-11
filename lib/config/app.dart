import 'package:flutter/material.dart';
import 'package:i3t2/features/routes/service/routes.dart';

/// 管理App
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
    );
  }
}
