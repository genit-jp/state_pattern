import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum PageState {
  page1,
  page2,
  page3,
}

class _MyHomePageState extends State<MyHomePage> {
  PageState _pageState = PageState.page1;
  String _title = "タイトル";
  @override
  Widget build(BuildContext context) {
    print(_pageState);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Text("aaa"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _pageState = PageState.page1;
                    });
                  },
                  child: const Text("1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _pageState = PageState.page2;
                    });
                  },
                  child: const Text("2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _pageState = PageState.page3;
                    });
                  },
                  child: const Text("3"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
