import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ssk/check_in/qr_code_scan.dart';

class CheckIn extends StatelessWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(120)),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors:<Color>[
                Color(0xff1e4fff),
                Color(0xffb6e9ff),
              ]
          )
      ),
      child: MaterialButton(
          height: 250,
          minWidth: 250,
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
              Text('CHECK \nIN',
                style: GoogleFonts.merriweather(
                    fontSize: 45,
                    color: Colors.white,
                  fontWeight: FontWeight.w800
                ),
                textAlign: TextAlign.center,
              )
            ],
          )
      ),
    );
  }
}
