import 'package:flutter/material.dart';
import 'package:login_ssk/check_out/check_out.dart';
import 'package:login_ssk/model/clock.dart';
import 'package:provider/provider.dart';

class ConFirmCheckIn extends StatefulWidget {
  const ConFirmCheckIn({Key? key}) : super(key: key);

  @override
  _ConFirmCheckInState createState() => _ConFirmCheckInState();
}

class _ConFirmCheckInState extends State<ConFirmCheckIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.redAccent,
        content: SizedBox(
          height: 250,
          child: Column(
            children: [
              const Text(
                  'Giờ Check In của bạn là :',
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
              const SizedBox(height: 50),
              const Text(
                'Bạn chắc chắn chưa ?',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
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
                    onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut())),
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
    );
  }
}
