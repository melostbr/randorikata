import 'package:flutter/material.dart';
import 'package:random_pairs/src/models/random_pairs_model.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController inputController;
  final randomPairs = new RandomPairs();
  final names = List();

  _updateNames(value){
    setState(() {
      randomPairs.addName(value);
      names.add(value);
    });
  }

  // Creates a Widget based on the names list
  List<Widget> _displayNames(){
    return new List<Widget>.generate(names.length, (int index){
      return Text(
        names[index].toString(),
        style: TextStyle(fontSize: 16)
      );
    });
  }

  @override
  void dispose() {
    names.clear();
    inputController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    inputController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                // Names list display
                SafeArea(child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: _displayNames()
                )),
                // Names input
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: inputController,
                        decoration: InputDecoration(
                          hintText: 'New player name',
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple[200], width: 2)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple[200],width: 2)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple[200],width: 2)),
                        ),
                      )
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      backgroundColor: Colors.deepPurple[300],
                      onPressed: () => [
                        randomPairs.addName(inputController.text),
                        _updateNames(inputController.text),
                        inputController.clear(),
                      ]
                    )
                ]),
              ]
            ),
            // Time input
            Column(
              children: <Widget>[
                //Timer https://www.woolha.com/tutorials/flutter-date-time-datetime-picker-input-example
                //https://www.youtube.com/watch?v=tRe8teyf9Nk
              ]
            ),
          ]
        ),
      );
  }
}