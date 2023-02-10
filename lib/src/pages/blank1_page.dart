import 'package:flutter/material.dart';

/// 白紙1ページ作成
class Blank1Page extends StatelessWidget {
  const Blank1Page({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/dev/blank2');
        },
        child: const Text("blank2へ"),
      )),
    );
  }
}
