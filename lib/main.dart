import 'package:flutter/material.dart';
import 'package:random_pairs/src/screens/main_page.dart';

void main() => runApp(RandomPairs());

class RandomPairs extends StatelessWidget {
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


