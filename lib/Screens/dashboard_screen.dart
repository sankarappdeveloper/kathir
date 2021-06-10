import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Center(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.axslNHD9b3zMPu_y-x_ynAD5D5?pid=ImgDet&w=424&h=424&rs=1"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("20 Jan 2021",
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Breaking News",
                      // textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.white,
                  height: 340,
                  width: 320,
                  child: Card(
                    // semanticContainer: true,
                    // clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        // semanticContainer: true,
                        // clipBehavior: Clip.antiAliasWithSaveLayer,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20.0),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png"),
                                fit: BoxFit.cover),
                            // borderRadius: BorderRadius.circular(20.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          // Image.network(
                          //   'https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png',
                          //   fit: BoxFit.cover,
                          height: 200,
                          // width: 200,
                        ),

                        // margin: EdgeInsets.all(10),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 80,
                          width: 300,
                          child: Text(
                            'DRDO invites EoI to transfer technology of 2-DG drug for bulk production',
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.axslNHD9b3zMPu_y-x_ynAD5D5?pid=ImgDet&w=424&h=424&rs=1"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("John Smith",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              Spacer(),
                              Text("20 Jan 2021",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: CircleTabIndicator(color: Colors.green, radius: 2),
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Internation",
                    ),
                    Tab(
                      text: "Media",
                    ),
                    Tab(
                      text: "Magazine",
                    ),
                    Tab(
                      text: "Business",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png"),
                                    fit: BoxFit.cover),
                                // borderRadius: BorderRadius.circular(20.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              // Image.network(

                              //   'https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png',
                              //   fit: BoxFit.cover,
                              height: 90,
                              width: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: 180,
                                      height: 60,
                                      child: Text(
                                        'Content DRDO invites EoI to transfer technology of 2-D ',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontWeight: FontWeight.w800),
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Jan-10-2021",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                      // Spacer(),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.timer,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "10 min read",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png"),
                                    fit: BoxFit.cover),
                                // borderRadius: BorderRadius.circular(20.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              // Image.network(

                              //   'https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png',
                              //   fit: BoxFit.cover,
                              height: 90,
                              width: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: 180,
                                      height: 60,
                                      child: Text(
                                        'Content DRDO invites EoI to transfer technology of 2-D ',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontWeight: FontWeight.w800),
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Jan-10-2021",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                      // Spacer(),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.timer,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "10 min read",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
