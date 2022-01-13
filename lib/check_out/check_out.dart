
import 'package:flutter/material.dart';
import 'package:login_ssk/check_out/confirm_checkout.dart';
import 'package:login_ssk/history.dart';
import 'package:login_ssk/model/counting_time.dart';
import 'package:login_ssk/model/clock.dart';
import 'package:login_ssk/model/location.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
                  Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topLeft,
                              colors:<Color>[
                                Color(0xff11ceb7),
                                Color(0xff0ea1bb),
                              ]
                          )
                      ),
                      child: Column(
                        children:[
                          const SizedBox(height: 30),
                          const Text(
                          'Working time \n của bạn là:',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                          const SizedBox(height: 20),
                          Counting(),
                        ]
                      ),
                  ),
                  const SizedBox(height:30),
                  Location(),
                  const SizedBox(height: 30),
                  ConFirmCheckOut(),
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
                          child:const Text(
                              'Lịch sử',
                            style: TextStyle(color: Colors.white),
                          )),
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                          onPressed:(){},
                          child:const Text(
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
