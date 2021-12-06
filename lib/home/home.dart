import 'package:flutter/material.dart';
import 'package:login_ssk/home/clock.dart';
import 'package:login_ssk/home/location.dart';
import 'package:login_ssk/home/qr_code_scan.dart';

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
      body: ListView(
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
                ),),const SizedBox(height: 50),
                DigitalClock(),
                const SizedBox(height: 50),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(120)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors:<Color>[
                          Color(0xff1778e2),
                          Color(0xffd6e0f5),
                        ]
                    )
                  ),
                  child: MaterialButton(
                      height: 235,
                      minWidth: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QRViewExample()));
                      },
                      child: Column(
                        children: [
                          // Icon(
                          //   Icons.account_circle_rounded
                          // ),
                          SizedBox(height: 10),
                          Text(' Check \n     In',
                            style: TextStyle(
                                fontSize: 65,
                              color: Colors.white
                            ),
                          )
                        ],
                      )
                  ),
                ),const SizedBox(height:50),
                  Location(),
                  const SizedBox(height: 50),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          'Lịch sử'
                        )),
                    ElevatedButton(
                        onPressed:(){},
                        child: Text(
                          'About',
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
