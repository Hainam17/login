import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ssk/home/home.dart';
import 'package:login_ssk/login/forgot_pass.dart';
import 'package:login_ssk/login/signUp.dart';
import '../app_path.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children:[ Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Image(
                        image: AssetImage(AppPath.logo_login),
                        width: 150,
                      )
                  ),const SizedBox(height: 50),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(15,0,15,0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                              decoration: InputDecoration(
                                labelText: 'Tên đăng nhập',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          const SizedBox(height: 30),
                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Mật khẩu',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          const SizedBox(height: 30),
                          Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed:(){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FoGot()));
                                      },
                                      child: Text('Quên mật khẩu ?'))
                                ],
                              )
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                                },
                                child: Text("Đăng nhập",
                                  style: TextStyle(),
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            side: BorderSide(color: Colors.blueAccent)
                                        )
                                    )
                                ),
                              ),
                            ),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Chưa có tài khoản?',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                                TextButton(
                                    onPressed:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                    },
                                    child: Text(
                                      'Đăng kí',
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
            ]),
      ),
    );
  }
}