import 'package:flutter/material.dart';
import 'package:login_ssk/home/home.dart';
import '../app_path.dart';
import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    return Scaffold(
      body: ListView(
        children:[ Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(15,15,15,0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: MyBoder,
                            labelText: 'Tên đăng nhập',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15,15,15,0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: MyBoder,
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15,15,15,0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: MyBoder,
                            labelText: 'Mật khẩu',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15,15,15,10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: MyBoder,
                            labelText: 'Nhập lại mật khẩu',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: onSignInClick,
                            child: Text("Đăng kí",
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
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Đã có tài khoản?',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            TextButton(
                                onPressed: onLogInClick,
                                child: Text(
                                  'Đăng nhập',
                                ))
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
    );
  }
  void onLogInClick(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen())
    );
  }
  void onSignInClick(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())
    );
  }
}
