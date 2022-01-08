import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FoGot extends StatefulWidget {
  const FoGot({Key? key}) : super(key: key);

  @override
  _FoGotState createState() => _FoGotState();
}

class _FoGotState extends State<FoGot> {
  @override
  Widget build(BuildContext context) {
    var myBoder =OutlineInputBorder(
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15),
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
        )
    );
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Trở lại',
          )
      ),
      body: ListView(
          children: [ Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Đặt lại mật khẩu',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Wrap(
                children: [
                  Text('Hãy nhập số điện thoại bạn đăng kí, chúng tôi sẽ gửi mã xác nhận (OTP) đến số điện thoại của bạn để xác nhận',
                  style: TextStyle(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: myBoder,
                          labelText: 'Số điện thoại',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                        ],
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: myBoder,
                          labelText: 'Mật khẩu mới',
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: myBoder,
                          labelText: 'Nhập lại mật khẩu',
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: onConfirm,
                        child:
                        Text("Xác nhận",
                          style: TextStyle(),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side:BorderSide(color: Colors.blueAccent)
                      ),
                    ),
                  ),
                    )
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
  void onConfirm(){
  }
}
