import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock with ChangeNotifier {
  String _clock = '00:00:00';

  getCounter() => _clock;

  setCounter(String clock) => _clock = clock;

  diGiTalClock() {
    Timer.periodic(const Duration(seconds: 1), (timer){
      var formater = DateFormat('jms');
      _clock = formater.format(DateTime.now());
      notifyListeners();
    });
  }
}
