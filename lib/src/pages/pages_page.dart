import 'package:flutter/material.dart';
import 'package:i3t2/src/core/routes.dart';

/// ページ一覧ページ
class PagesPage extends StatelessWidget {
  const PagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final children = [
    //   ListTile(
    //     title: const Text("ホーム"),
    //     onTap: () => Navigator.pushNamed(context, '/home'),
    //   )
    // ];
    final children = Routes.routes.keys.map(
      (routeName) {
        return ListTile(
          title: Text(routeName),
          // Navigator.pushNamed(context, routeName)
          onTap: () => Navigator.pushNamed(context, routeName),
        );
      },
    ).toList();
    //  [
    //   ListTile(
    //     title: const Text("ホーム"),
    //     onTap: () => Navigator.pushNamed(context, '/home'),
    //   )
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ページ一覧'),
      ),
      body: ListView(
        children: children,
      ),
    );
  }
}

        // Routes.routes.keys.map((e) => ListTile()).toList()
      
