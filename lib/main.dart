import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_ssk/check_out/check_out.dart';
import 'package:login_ssk/login/login_page.dart';
import 'package:login_ssk/model/clock.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Clock>(create: (context) => Clock()),
        // ChangeNotifierProvider<Location>(create: (context)=>Location()),
        // ChangeNotifierProvider<Counting>(create: (context)=>Counting()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          color: Colors.white,
        // ),
      ),
    );
  }
}