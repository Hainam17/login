import 'package:flutter/material.dart';
import 'package:login_ssk/app_path.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:EdgeInsets.only(left: 10, top: 10),
                    child: Text('Xin chào',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(15),
                            child:Container(
                              width: 100,
                                height: 130,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment(0.8,0.0),
                                        colors:<Color>[
                                          Color(0xff1778e2),
                                          Color(0xff68b6e7),
                                        ]
                                    ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image(
                                        image: AssetImage(AppPath.icon_fb),
                                      ),
                                    ),
                                     SizedBox(height: 15),
                                     Container(
                                       child: Text(
                                         'Khai báo y tế',
                                         maxLines: 2,
                                         style: TextStyle(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w700,
                                           color: Colors.white
                                         ),
                                       ),
                                     )
                                  ],
                                ),
                              ),
                            ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child:Container(
                            width: 100,
                            height: 130,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment(0.8,0.0),
                                  colors:<Color>[
                                    Color(0xff17e24a),
                                    Color(0xff76e393),
                                  ]
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image(
                                    image: AssetImage(AppPath.icon_gg),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  child: Wrap(
                                    children: [
                                      Text(
                                        'Chứng nhận ngừa covid',
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child:Container(
                            width: 100,
                            height: 130,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment(0.8,0.0),
                                  colors:<Color>[
                                    Color(0xff1778e2),
                                    Color(0xff68b6e7),
                                  ]
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image(
                                    image: AssetImage(AppPath.office),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  child: Text(
                                    'Tư vấn sức khỏe F0',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
