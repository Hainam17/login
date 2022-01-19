import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counting extends StatefulWidget {
  const Counting({Key? key}) : super(key: key);

  @override
  _CountingState createState() => _CountingState();
}

class _CountingState extends State<Counting>{
  int seconds =0;
  Duration duration = const Duration();
  addTime() async {
    final prefs = await SharedPreferences.getInstance();
    seconds = (prefs.getInt('seconds') ?? 0)+1;
    setState(() {
      prefs.setInt('seconds', seconds);
      duration = Duration(seconds:  seconds);
    });
  }
  void initState (){
    super.initState();
      Timer.periodic(const Duration(seconds: 1), (_){
        addTime();
      });
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