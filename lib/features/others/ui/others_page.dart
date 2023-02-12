import 'package:flutter/material.dart';
import 'package:i3t2/features/navigation/ui/common_bottom_navigation_bar.dart';
import 'package:i3t2/features/routes/service/routes.dart';

/// その他ページの View
class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final children = Routes.nonBottomNavigationBarPages.map(
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
        title: const Text('その他ページ'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(children: children),
      bottomNavigationBar: const CommonBottomNavigationBar(initSelectIndex: 4),
    );
  }
}
