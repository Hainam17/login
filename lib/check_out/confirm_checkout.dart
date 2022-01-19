
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ssk/check_in/qr_code_scan.dart';
import 'package:login_ssk/model/clock.dart';
import 'package:login_ssk/model/counting_time.dart';
import 'package:provider/provider.dart';

class ConFirmCheckOut extends StatefulWidget {
  const ConFirmCheckOut ({Key? key}) : super(key: key);

  @override
  _ConFirmCheckOutState createState() => _ConFirmCheckOutState();
}

class _ConFirmCheckOutState extends State<ConFirmCheckOut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child:MaterialButton(
          height: 80,
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          onPressed:()=> showDialog<String>
            (context: context,
              builder: (BuildContext context) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.redAccent,
                content: SizedBox(
                  height: 350,
                  child: Column(
                    children: [
                      const Text(
                          'Giờ Check Out của bạn là :',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                            textAlign: TextAlign.center
                        ),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 20),
                      const Text(
                          'Tổng thời gian làm việc của bạn là:',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                            textAlign: TextAlign.center
                        ),
                      // Counting(),
                      const SizedBox(height: 50),
                      const Text(
                        'Bạn chắc chắn chưa ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                actions: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color:Colors.white,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>QRViewExample()));
                            },
                            child:const Text(
                              'Yes',
                              style: TextStyle(color: Colors.black),
                            )),
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.white,
                            onPressed:()=> Navigator.pop(context),
                            child:const Text(
                              'No',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  )
                ],
              )
          ),
          color: Colors.grey,
          child:const Text(
            'CheckOut',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
