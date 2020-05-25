import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:random_pairs/src/models/random_pairs.dart';

class NewNameInput extends StatefulWidget {
  @override
  _NewNameInputState createState() => _NewNameInputState();
}

class _NewNameInputState extends State<NewNameInput> {
  final nameInputController = TextEditingController();

  @override
  void dispose() {
    nameInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 250,
            child: TextField(
              controller: nameInputController,
              decoration: InputDecoration(
                hintText: 'New player name',
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple[200], width: 2)),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple[200],width: 2)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple[200],width: 2)),
              ),
            )
          ),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.deepPurple[300],
          onPressed: () => [
            context.read<RandomPairs>().addName([nameInputController.text]),
            nameInputController.clear()
          ]
        )
      ]);
  }
}