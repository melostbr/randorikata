import 'dart:collection';
import 'package:flutter/foundation.dart';

 class RandomPairs with ChangeNotifier {
  final Queue _pairs = Queue();
  Queue<String> _drivers;
  Queue<String> _navigators;
  List<String> _names = [];

  List<String> get names => _names;

  void addName(List<String> name) {
    _names.add(name[0]);
    notifyListeners();
  }

  // void _distributeIntoQueues() {
  //   _drivers = Queue.from(_names);
  //   _navigators = Queue.from(_names);
  //   //Shift to avoid same person pair
  //   _navigators.add(_navigators.removeFirst());
  // }

  // 2D list of pairs of drivers and navigators
  // void _combinePairs(){
  //   var driver = _drivers.removeFirst();
  //   var navigator = _navigators.removeFirst();
  //   _pairs.add([driver, navigator]);
  // }

  // void _selectNewPair() {
  //   if(_pairs.isEmpty) return;

  //   var newPair = _pairs.removeFirst();
  //   print('New pair playing now: $newPair');
  //   Timer(Duration(seconds: 5), () => _selectNewPair());
  // }

  // void start() {
  //   _distributeIntoQueues();
  //   for (var i = 0; i < names.length; i++){
  //     _combinePairs();
  //   }
  //  _selectNewPair();
  // }
 }
