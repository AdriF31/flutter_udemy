import 'package:flutter/material.dart';

import 'package:flutterbasic/text.dart';
import 'package:flutterbasic/textController.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String text = 'Hai';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Assignment')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: text,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    TextController();
                    setState(() {
                      text = TextController();
                    });
                  },
                  child: Text('click me')))
        ],
      ),
    );
  }
}
