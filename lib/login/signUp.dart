import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_ssk/home/home.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";
  var MyBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              child: TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.account_circle),
                  border: MyBorder,
                  hintText: 'Số điện thoại',
                ),
                maxLines: 10,
                keyboardType: TextInputType.phone,
              ),
            ),const SizedBox(height: 20),
            Visibility(
              child: TextField(
                controller: otpController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  border: MyBorder,
                  hintText: 'OTP',
                  prefix: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(''),
                  ),
                ),
                maxLength: 6,
                keyboardType: TextInputType.number,
              ),
              visible: otpVisibility,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
              minWidth: double.infinity,
              onPressed: () {
                if (otpVisibility) {
                  verifyOTP();
                } else {
                  loginWithPhone();
                }
              },
              child: Text(
                otpVisibility ? "Verify" : "Login",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+84" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          // print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        // print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
          (value) {
        // print("You are logged in successfully");
        Fluttertoast.showToast(
          // msg: "You are logged in successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0, msg: '',
        );
      },
    ).whenComplete(
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }
}