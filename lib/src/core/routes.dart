import 'package:flutter/material.dart';
import 'package:i3t2/src/pages/blank1_page.dart';
import 'package:i3t2/src/pages/blank2_page.dart';
import 'package:i3t2/src/pages/blank3_page.dart';
import 'package:i3t2/src/pages/empty_page.dart';
import 'package:i3t2/src/pages/my_home_page.dart';
import 'package:i3t2/src/pages/pages_page.dart';

/// ルーティング管理
class Routes {
  // ルーティング一覧
  static final routes = <String, WidgetBuilder>{
    '/home': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
    '/dev/pages': (context) => const PagesPage(),
    '/dev/empty': (context) => const EmptyPage(title: "空ページ"),
    '/dev/blank1': (context) => const Blank1Page(title: "blank1"),
    '/dev/blank2': (context) => const Blank2Page(title: "blank2"),
    '/dev/blank3': (context) => const Blank3Page(title: "blank3"),
  };
}
