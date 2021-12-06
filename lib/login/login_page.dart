
import 'package:flutter/material.dart';
import 'package:login_ssk/app_path.dart';
import 'package:login_ssk/home/home_page.dart';
import 'package:login_ssk/login/reset_page.dart';
import 'package:login_ssk/login/signUp_page.dart';
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var MyBoder =OutlineInputBorder(
      borderRadius: new BorderRadius.only(
        bottomLeft: const Radius.circular(15),
        bottomRight: const Radius.circular(15),
        topLeft: const Radius.circular(15),
        topRight: const Radius.circular(15),
      )
  );
  @override
  Widget build(BuildContext context) {
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
                      Color(0xffd6e0f5),
                    ]
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 150),
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                  ),
                  child: ListView(
                    physics:  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding:const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Đăng nhập',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:const EdgeInsets.all(15),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon:const Icon(Icons.account_circle),
                                  border: MyBoder,
                                  hintText: 'Tên đăng nhập hoặc số điện thoại',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  border: MyBoder,
                                  hintText: 'Mật khẩu',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ReSet()));
                                  },
                                  child: Text('Quên mật khẩu ?'))
                            ],
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HomePage()),
                              );
                                  },
                            child: Text(
                              "Đăng nhập",
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
                      SizedBox(height: 200),
                      Container(
                        height: 150,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Chưa có tài khoản?',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                                },
                                child: Text(
                                  'Đăng kí',
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 50)
                    ],
                  )
                ],
              )
            )
            )
          ],
        ),
      ),
    );
  }
}
