import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counting extends StatefulWidget{
  Counting({Key? key}) : super(key: key);

  @override
  _CountingState createState() => _CountingState();
}

class _CountingState extends State<Counting>{
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _seconds;
  Duration duration = Duration();
  Timer ? timer;

  Future <void>addTime() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // final addSeconds =1;
    // seconds = (prefs.getInt(duration.inSeconds.toString()) ?? 0);
    // setState(() {
    //   seconds = (duration.inSeconds +addSeconds);
    //   duration = Duration(seconds:  seconds);
    // });
    final SharedPreferences prefs = await _prefs;
    int seconds = (prefs.getInt('counter') ?? 0) + 1;

    setState(() {
      // seconds = (prefs.getInt(duration.inSeconds.toString()) ?? 0)+duration.inSeconds +1;
      _seconds = prefs.setInt('counter', seconds).then((bool success) {
        return seconds;
      });
        seconds = (duration.inSeconds +1);
        duration = Duration(seconds:  seconds);
    });
  }
  void initState (){
    super.initState();
    _seconds = _prefs.then((SharedPreferences prefs) {
      return prefs.getInt('counter') ?? 0;
    });
    timer = Timer.periodic(Duration(seconds: 1 ), (_) => addTime());
  }

  buildTime() {
    String twoDigits(int n)=> n.toString().padLeft(2, '0');
    final hours =(twoDigits(duration.inHours.remainder(24)));
    final minutes =(twoDigits(duration.inMinutes.remainder(60)));
    final seconds =(twoDigits(duration.inSeconds.remainder(60)));

    return Text (
      '$hours:$minutes:$seconds',
      style: TextStyle(
        fontSize: 50,
        color: Colors.white
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: buildTime(),
      ),
    );
  }
}
