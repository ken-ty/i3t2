import 'package:flutter/material.dart';

/// CSV 出力ページ
class ExportCSVPage extends StatelessWidget {
  /// CSV 出力ページ
  const ExportCSVPage({super.key});

  /// CSV を出力する
  void _exportCSV() {
    print("_exportCSV clicked!");
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CSV 出力')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _exportCSV(),
          child: const Text("export"),
        ),
      ),
    );
  }
}
