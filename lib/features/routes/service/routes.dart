import 'package:flutter/material.dart';
import 'package:i3t2/features/blank/ui/blank1_page.dart';
import 'package:i3t2/features/blank/ui/blank2_page.dart';
import 'package:i3t2/features/blank/ui/blank3_page.dart';
import 'package:i3t2/features/routes/entity/page_info.dart';
import 'package:i3t2/features/routes/ui/develop_pages_page.dart';
import 'package:i3t2/features/empty/ui/empty_page.dart';
import 'package:i3t2/features/counter/my_home_page.dart';
import 'package:i3t2/features/routes/ui/pages_page.dart';

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
  static const String initialRoute = '/home';

  /// ルーティング一覧
  static final Map<String, Widget Function(BuildContext)> routes =
      Map.fromIterables(
    pages.map((e) => e.routeName),
    pages.map((e) => e.routing),
  );
}
