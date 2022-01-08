import 'package:flutter/material.dart';
import 'package:login_ssk/check_in/check-in.dart';
import 'package:login_ssk/history.dart';
import 'package:login_ssk/model/clock.dart';
import 'package:login_ssk/model/location.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  Text('Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 35,
                    ),),
                  // const SizedBox(height: 30),
                  Container(
                    child: Consumer<Clock>(
                      builder: (context, myClock, child) {
                        return Column(
                          children: [
                            Center(
                                child: myClock.diGiTalClock()
                            ),
                            Text(myClock.getCounter(),
                              style: const TextStyle(
                                  fontSize: 35
                              ),)
                          ],
                        );
                      },
                    ),
                  ),
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
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> HisToRy()));
                          },
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

