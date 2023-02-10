import 'package:flutter/material.dart';
import 'package:i3t2/src/core/routes.dart';

/// ページ一覧ページ
class PagesPage extends StatelessWidget {
  const PagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final children = Routes.pages.map(
      (page) {
        return ListTile(
          title: Text(page.name),
          subtitle: Text(page.routeName),
          onTap: () => Navigator.pushNamed(context, page.routeName),
        );
      },
    ).toList();
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
