import 'package:flutter/material.dart';
import 'package:login_ssk/app_path.dart';

class HisToRy extends StatelessWidget {
  const HisToRy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lịch sử',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children:[ Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const SizedBox(
                height: 150,
                width: 150,
                child:ClipOval(
                  child: Image(
                    image: AssetImage(AppPath.user_image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Hải Nam',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Intern',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                ),
              ),
              const SizedBox(height: 30),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Date',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),const SizedBox(width: 50),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Check In',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Check Out' ,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]
      ),
    );
  }
}
