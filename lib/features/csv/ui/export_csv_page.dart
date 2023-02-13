// import 'dart:html';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:i3t2/features/routes/entity/page_info.dart';
import 'package:i3t2/features/routes/service/routes.dart';

/// CSV 出力ページ
class ExportCSVPage extends StatelessWidget {
  /// CSV 出力ページ
  ExportCSVPage({super.key});

  /// CSV を出力する
  void _exportCSV() {
    print("_exportCSV clicked!");
    return;
  }

  /// CSV 出力の input データ
  /// 一旦 Pages 出力を試みる
  final pages = Routes.pages;

  /// page を csv に変換する為の前処理
  List<String> pageToStringList(PageInfo page) {
    return [
      page.name,
      page.description,
      page.routeName,
    ];
  }

  /// ヘッダー
  final header = ['name', 'description', 'routeName'];

  @override
  Widget build(BuildContext context) {
    final rows = pages.map((page) => pageToStringList(page));
    final csv = const ListToCsvConverter().convert(
      [header, ...rows],
    );
    // final anchorElement =
    //     AnchorElement(href: 'data:text/plain;charset=utf-8,$csv')
    //       ..setAttribute('download', 'users.csv')
    //       ..click();

    return Scaffold(
      appBar: AppBar(title: const Text('CSV 出力')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // anchorElement;
            _exportCSV();
          },
          child: const Text("export"),
        ),
      ),
    );
  }
}
