import 'package:flutter/material.dart';
import 'package:i3t2/features/routes/service/routes.dart';

/// 開発ページ一覧ページの Controller
class DevelopPagesPageController extends StatelessWidget {
  const DevelopPagesPageController({super.key});

  @override
  Widget build(BuildContext context) {
    final children =
        Routes.pages.where((page) => page.routeName.contains('/dev')).map(
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
        title: const Text('開発ページ一覧'),
      ),
      body: ListView(
        children: children,
      ),
    );
  }
}
