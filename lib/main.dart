import 'package:flutter/material.dart';
import 'package:random_pairs/src/screens/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Random Pairs"),
            backgroundColor: Colors.deepPurple,
          ),
          body: MainPage(),
        )
    );
  }
}


