import 'package:flutter/material.dart';
import 'package:random_pairs/src/screens/main_page.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Random Pairs"),
        backgroundColor: Colors.deepPurple,
      ),
      body: MainPage(),
    )
  )
);


