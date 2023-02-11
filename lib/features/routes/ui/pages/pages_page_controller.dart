import 'package:i3t2/features/routes/entity/page_info.dart';
import 'package:i3t2/features/routes/service/routes.dart';

/// ページ一覧ページ Controller
class PagesPageController {
  /// コンストラクタ
  const PagesPageController();

  /// 開発ページ以外の全ページリストを返す
  List<PageInfo> pages() {
    return Routes.pages
        .where((page) => !page.routeName.contains('/dev'))
        .toList();
  }
}
