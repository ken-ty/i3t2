import 'package:flutter/material.dart';

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
