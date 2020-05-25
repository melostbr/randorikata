import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:random_pairs/src/models/random_pairs.dart';

class NamesDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController _controller;

    final List<String> names = Provider.of<RandomPairs>(context).names;
    void reorder(int a, int b) { }

    return ReorderableListView(
          scrollController: _controller,
          onReorder: reorder,
          children: List.generate(names.length, (int index){
            return Card(
              key: ValueKey('$index'),
              child: ListTile (
                title: Text( names[index].toString(), style: TextStyle(fontSize: 16)),
                trailing: Icon(Icons.reorder),
              )
            );
          })
        );
  }
}