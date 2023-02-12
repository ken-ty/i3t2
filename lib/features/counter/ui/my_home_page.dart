import 'package:flutter/material.dart';
import 'package:i3t2/apis/chat_gpt_hoge.dart';
import 'package:i3t2/features/counter/ui/my_home_controller.dart';
import 'package:i3t2/features/navigation/ui/common_bottom_navigation_bar.dart';

// マイホームページ
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _controller = const MyHomePageController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _callApi() {
    setState(() {
      ChatGPTApi().apiCall();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        onPressed: _callApi,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const CommonBottomNavigationBar(),
    );
  }
}
