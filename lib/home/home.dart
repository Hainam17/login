import 'package:flutter/material.dart';
import 'package:login_ssk/check_in/check-in.dart';
import 'package:login_ssk/home/clock.dart';
import 'package:login_ssk/home/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          children: [
            const SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  Text('WELCOME',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 35,
                  ),),
                  const SizedBox(height: 30),
                  DigitalClock(),
                  const SizedBox(height: 30),
                  CheckIn(),
                  const SizedBox(height:30),
                  Location(),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color:Colors.grey,
                          onPressed: (){},
                          child: Text(
                            'Lịch sử',
                            style: TextStyle(color: Colors.white),
                          )),
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                          onPressed:(){},
                          child: Text(
                            'About',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
