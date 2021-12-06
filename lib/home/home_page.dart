import 'package:flutter/material.dart';
import 'package:login_ssk/home/wiget/user_card.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const UserCard(
                )
              ],
            ),
          )
        ],
      ),
      )
    );
  }
}
