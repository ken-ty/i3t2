import 'package:flutter/material.dart';

/// 白紙2ページ作成
class Blank2Page extends StatelessWidget {
  const Blank2Page({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/dev/blank3');
        },
        child: const Text("blank3へ"),
      )),
    );
  }
}
