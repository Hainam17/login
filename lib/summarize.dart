import 'package:flutter/material.dart';

class Summarize extends StatelessWidget {
  const Summarize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.only(left: 20, right: 20),
            children: [
              const SizedBox(height: 30),
              Container(
                child: Column(
                  children: [
                    Text('Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                    ),),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topLeft,
                              colors:<Color>[
                                Color(0xff11ceb7),
                                Color(0xff0ea1bb),
                              ]
                          )
                      ),
                      child: Column(
                        children: [
                          Text('Ngày',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: Colors.white
                          ),textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50),
                          Text('Giờ Check In của bạn là:',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white
                            ),textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50),
                          Text('Giờ Check Out của bạn là:',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white
                            ),textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50),
                          Text('Tổng thời gian làm việc:',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white
                            ),textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          minWidth: 100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color:Colors.grey,
                            onPressed: (){},
                            child:const Text(
                              'New Check In',
                              style: TextStyle(color: Colors.white),
                            )),
                        MaterialButton(
                          minWidth: 120,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.grey,
                            onPressed:(){},
                            child:const Text(
                              'Quit',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
