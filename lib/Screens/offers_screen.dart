import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OffersScreen extends StatelessWidget {
  // const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text(
          'Offers',
          // style: TextStyle(color: Colors.pinkAccent),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     // color: Colors.white,
              //     image: DecorationImage(
              //       image: AssetImage('assets/bk_of.png'),
              //       fit: BoxFit.cover,
              //       // colorBlendMode: BlendMode(16),
              //     ),
              //     borderRadius: BorderRadius.only(
              //         bottomLeft: Radius.circular(40),
              //         bottomRight: Radius.circular(40)),
              //     boxShadow: [
              //       BoxShadow(
              //         color:
              //             Colors.blue[900].withOpacity(0.5), //color of shadow
              //         spreadRadius: 5, //spread radius
              //         blurRadius: 7, // blur radius
              //         offset: Offset(0, 2), // changes position of shadow
              //         //first paramerter of offset is left-right
              //         //second parameter is top to down
              //       ),
              //       //you can set more BoxShadow() here
              //     ],
              //   ),
              //   child: Container(
              //     alignment: Alignment(0.0, 1.8),
              //     child: SafeArea(
              //       child: Column(
              //         children: [
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Row(
              //             children: [
              //               IconButton(
              //                 icon: Icon(
              //                   Icons.arrow_back,
              //                   color: Colors.blue[900],
              //                 ),
              //                 onPressed: () {},
              //               ),
              //               SizedBox(
              //                 width: 10,
              //               ),
              //               Text(
              //                 'Offers',
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 25,
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Container(
              //             child: Text(
              //               'Total Offers',
              //               style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 25,
              //                 fontWeight: FontWeight.w700,
              //               ),
              //             ),
              //           ),
              //           Container(
              //             child: Card(
              //                 child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Text(
              //                 '10',
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 25,
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             )),
              //           ),
              //           // CircleAvatar(
              //           //   backgroundColor: Colors.amber,
              //           //   radius: 50,
              //           //   child: Icon(
              //           //     Icons.local_offer,
              //           //     size: 50,
              //           //     color: Colors.black,
              //           //   ),
              //           // ),
              //         ],
              //       ),
              //     ),
              //   ),
              //   height: 200,
              //   width: query.size.width,
              //   // child: Image.asset(
              //   //   'assets/bk_of.png',
              //   //   fit: BoxFit.fitHeight,
              //   //   colorBlendMode: BlendMode(16),
              //   // )
              // ),
              Column(
                children: [
                  // Container(
                  //   height: query.size.height,
                  //   width: query.size.width,

                  //   child: CustomPaint(
                  //     // child: Image.asset(
                  //     //   'assets/bk_of.png',
                  //     //   fit: BoxFit.fill,
                  //     // ),
                  //     painter: CurvePainter(),
                  //   ),

                  //   // color: Colors.white,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //     image: AssetImage('assets/bk_of.png'),
                  //     fit: BoxFit.fitHeight,
                  //     // colorBlendMode: BlendMode(16),
                  //   )
                  //       // boxShadow: [
                  //       //   BoxShadow(
                  //       //     color:
                  //       //         Colors.blue[900].withOpacity(0.5), //color of shadow
                  //       //     spreadRadius: 5, //spread radius
                  //       //     blurRadius: 7, // blur radius
                  //       //     offset: Offset(0, 2), // changes position of shadow
                  //       //     //first paramerter of offset is left-right
                  //       //     //second parameter is top to down
                  //       //   ),
                  //       //   //you can set more BoxShadow() here
                  //       // ],
                  //       // color: Colors.black26.withOpacity(0.5),
                  //       //   borderRadius: BorderRadius.only(
                  //       //       bottomLeft: Radius.circular(0),
                  //       //       bottomRight: Radius.circular(250)),
                  //       ),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    // color: Colors.red[50],
                                    // radius: 30,

                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              'https://th.bing.com/th/id/R75e74c3b5212cc110910ca65a08afb07?rik=FYIWTryyzTiLRg&riu=http%3a%2f%2fstatic.businessworld.in%2farticle%2farticle_extra_large_image%2f1530787237_amO2BP_Zomato_New_Logo_870x470.png&ehk=hVrblPjHAjXseFi7pYzStS%2bTyiupEqjX3aHdkfC%2fFyU%3d&risl=&pid=ImgRaw',
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),

                                  // Icons.account_balance_wallet_rounded,
                                  // size: 50,

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('50% Off on Zomato',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              // color: Colors.blue[900],
                                              color: Colors.black
                                              // color: Colors.pinkAccent,
                                              )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 150,
                                        child: Text(
                                            'Use code Delicious & get 50% offup to 120 on a ',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey[500],
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.av_timer_outlined,
                                    size: 30,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Expires Jul 31,2021',
                                      style: TextStyle(
                                        fontSize: 13,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.red,
                                      )),
                                  Spacer(),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        elevation: 6,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 1),
                                        backgroundColor: Colors.pinkAccent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Text(
                                      'Redeem',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
