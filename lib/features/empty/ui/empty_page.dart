import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  /// ページタイトル
  final String title;

  /// appBar を表示するかどうか
  final bool visibleAppBar;

  /// 空ページ
  const EmptyPage({
    super.key,
    this.title = "空ページ",
    this.visibleAppBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: visibleAppBar ? AppBar(title: Text(title)) : null);
  }
}
