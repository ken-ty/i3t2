import 'package:flutter/material.dart';
import 'package:i3t2/features/navigation/ui/common_bottom_navigation_bar.dart';
import 'package:i3t2/features/routes/ui/pages/pages_page_controller.dart';

/// ページ一覧ページ View
/// 開発ページを除く全てのページの一覧
class PagesPage extends StatelessWidget {
  /// コンストラクタ
  const PagesPage({super.key});

  /// このページの Controller
  final _controller = const PagesPageController();

  @override
  Widget build(BuildContext context) {
    /// 開発ページを除く全てのページの ListTile
    final pageListTitles = _controller.pages().map(
      (page) {
        return ListTile(
          title: Text(page.name),
          subtitle: Text(page.description),
          onTap: () => Navigator.pushNamed(context, page.routeName),
        );
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('ページ一覧')),
      body: ListView(children: pageListTitles),
      bottomNavigationBar: const CommonBottomNavigationBar(initSelectIndex: 1),
    );
  }
}
