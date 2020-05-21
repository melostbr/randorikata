import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:random_pairs/src/models/random_pairs.dart';

class NamesDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> names = Provider.of<RandomPairs>(context).names;
    void reorder(int a, int b) { }

    return SafeArea(
      child: ReorderableListView(
              onReorder: reorder,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              children: List.generate(names.length, (int index){
                  return Card(
                    key: Key('$index'),
                    child: Container(
                      width: 250,
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          names[index].toString(),
                          style: TextStyle(fontSize: 16),
                        )
                      )
                    )
                  );
                }),
         ),
    );
  }
}