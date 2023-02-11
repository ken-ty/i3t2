import 'package:flutter/material.dart';

/// アプリで利用するナビゲーション View
class CommonBottomNavigationBar extends StatefulWidget {
  /// 選択中のボタンインデックス
  final int initSelectIndex;

  /// アプリで利用するナビゲーション View
  const CommonBottomNavigationBar({super.key, this.initSelectIndex = 0});
  @override
  State<StatefulWidget> createState() => _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  /// アプリで利用するナビゲーション の状態
  _CommonBottomNavigationBarState();

  /// 初期表示を反映したか
  bool _completeInit = false;

  /// 現在の選択しているボタンの index
  int _currentIndex = 0;

  /// ボタンタップアクション
  void _buttonTap(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/dev');
        break;
    }
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    // 初期表示反映
    if (!_completeInit) {
      _currentIndex = widget.initSelectIndex;
      _completeInit = true;
    }
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (nextIndex) => _buttonTap(nextIndex),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: '開発'),
      ],
    );
  }
}
