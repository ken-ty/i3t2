import 'package:flutter/material.dart';
import 'package:i3t2/features/routes/service/routes.dart';

/// ページ一覧ページ
/// 開発ページを除く全てのページの一覧
class PagesPage extends StatelessWidget {
  const PagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final children =
        Routes.pages.where((page) => !page.routeName.contains('/dev')).map(
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
