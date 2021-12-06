import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({Key? key}) : super(key: key);

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  String clock='';

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      var formater = new DateFormat('jms');
      setState(() {
        clock =formater.format(DateTime.now());
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          '$clock',
          style: TextStyle(
            fontSize: 30
          ),
        ),
    );
  }
}
