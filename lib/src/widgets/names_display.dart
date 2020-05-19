import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:random_pairs/src/models/random_pairs.dart';

class NamesDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final names = Provider.of<RandomPairs>(context).names;

    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: List<Widget>.generate(names.length, (int index){
          return Text(
            names[index].toString(),
            style: TextStyle(fontSize: 16)
          );
        })
      ),
    );
  }
}