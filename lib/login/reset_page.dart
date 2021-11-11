import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ssk/app_path.dart';


class ReSet extends StatelessWidget {
  const ReSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyBoder =OutlineInputBorder(
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15),
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
        )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
        children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment(0.8,0.0),
                colors:<Color>[
                  Color(0xff1778e2),
                  Color(0xff6bb2e0),
                ]
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage(AppPath.logo_login),
                  width: 390,
                ),
              )
            ],
          ),
        ),
            Expanded(
               child: Container(
 //               width: double.infinity,
                margin: const EdgeInsets.only(top: 150),
                padding: const EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Quên mật khẩu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Số điện thoại',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                          ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding:const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: MyBoder,
                          hintText: 'Nhập nội dung',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              child: Text(
                                "Tiếp tục",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          side:BorderSide(color: Colors.blueAccent)
                                      )
                                  )
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  )
                ],
            ),
          )
            ),
        ],
      )
      )
    );
  }
}
