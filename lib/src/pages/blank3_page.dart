import 'package:flutter/material.dart';

/// 白紙3ページ作成
class Blank3Page extends StatelessWidget {
  const Blank3Page({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: const Text("ホームへ"),
      )),
    );
  }
}
