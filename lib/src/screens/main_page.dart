import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  NamesDisplay(),
                  NewNameInput()
                ]
              ),
              // Time input
              Column(
                children: [
                FlatButton(
                  onPressed: () {
                    DatePicker.showTimePicker(context, showTitleActions: true, onChanged: (date) {
                      print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                    }, onConfirm: (date) {
                      print('confirm $date');
                    }, currentTime: DateTime.now());
                  },
                  child: Text(
                    'show time picker',
                    style: TextStyle(color: Colors.blue),
                  )),
                  ]
              ),
            ]
          ),
        )
    );
  }
}