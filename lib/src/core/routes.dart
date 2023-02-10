import 'package:flutter/material.dart';
import 'package:i3t2/src/pages/blank1_page.dart';
import 'package:i3t2/src/pages/blank2_page.dart';
import 'package:i3t2/src/pages/blank3_page.dart';
import 'package:i3t2/src/pages/develop_pages_page.dart';
import 'package:i3t2/src/pages/empty_page.dart';
import 'package:i3t2/src/pages/my_home_page.dart';
import 'package:i3t2/src/pages/pages_page.dart';

/// ページ情報
class PageInfo {
  /// コンストラクタ
  PageInfo({
    required this.name,
    required this.description,
    required this.routeName,
    required this.routing,
  });

  /// ページ名
  String name;

  /// ページの説明
  String description;

  /// ルート名
  String routeName;

  /// ルーティング
  WidgetBuilder routing;
}

/// ルーティング管理
/// 基本的にインスタンス化せずに利用します
class Routes {
  /// ページテーブル
  static final pages = <PageInfo>[
    PageInfo(
      name: 'ホーム',
      description: """
ホームです.
初期のカウンター機能のままです.""",
      routeName: '/home',
      routing: (context) => const MyHomePage(title: 'ホーム'),
    ),
    PageInfo(
      name: '開発ページ一覧',
      description: """
開発ページ一覧を表示します.
本番環境では隠蔽してください.""",
      routeName: '/dev',
      routing: (context) => const DevelopPagesPage(),
    ),
    PageInfo(
      name: 'ページ一覧',
      description: """
全てのページを表示します.
リストアイテムをタップするとページ詳細に遷移します.
設計資料として利用できるページ一覧をCSV出力したいです(工事中)""",
      routeName: '/dev/pages',
      routing: (context) => const PagesPage(),
    ),
    PageInfo(
      name: '空ページ',
      description: """
何も実装しない空のページです.
なにもいらないけど空画面が欲しい時に利用できます.""",
      routeName: '/dev/empty',
      routing: (context) => const EmptyPage(title: '空ページ'),
    ),
    PageInfo(
      name: '白紙1ページ',
      description: """
白紙ページです.
これから実装する画面として一旦配置したりできます.""",
      routeName: '/dev/blank1',
      routing: (context) => const Blank1Page(title: '白紙1ページ'),
    ),
    PageInfo(
      name: '白紙2ページ',
      description: """
白紙ページです.
これから実装する画面として一旦配置したりできます.""",
      routeName: '/dev/blank2',
      routing: (context) => const Blank2Page(title: '白紙2ページ'),
    ),
    PageInfo(
      name: '白紙3ページ',
      description: """
白紙ページです.
これから実装する画面として一旦配置したりできます.""",
      routeName: '/dev/blank3',
      routing: (context) => const Blank3Page(title: '白紙3ページ'),
    ),
  ];

  /// 初期ページのルート名
  static const initialRoute = '/dev/pages';

  /// ルーティング一覧
  static final routes = Map.fromIterables(
    pages.map((e) => e.routeName),
    pages.map((e) => e.routing),
  );
}
