import 'package:flutter/material.dart';

/// 空ページ
class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }
}
