import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:random_pairs/src/models/random_pairs.dart';
import 'package:random_pairs/src/widgets/names_display.dart';
import 'package:random_pairs/src/widgets/new_name_input.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RandomPairs(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: NamesDisplay()),
                  NewNameInput(),
                  //Timer https://www.woolha.com/tutorials/flutter-date-time-datetime-picker-input-example
                  //https://www.youtube.com/watch?v=tRe8teyf9Nk
                ]
              ),
            ]
          ),
        )
    );
  }
}