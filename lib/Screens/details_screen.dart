import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 10.0,
                      fillColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      padding: EdgeInsets.all(5.0),
                      shape: CircleBorder(),
                    ),
                    Spacer(),
                    // ConstrainedBox(
                    //   constraints: BoxConstraints.tightFor(width: 20, height: 20),
                    //   child: ElevatedButton(
                    //     child: Text(
                    //       'Button',
                    //       style: TextStyle(fontSize: 24),
                    //     ),
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(
                    //       shape: CircleBorder(),
                    //     ),
                    //   ),
                    // ),
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardScreen(),
                          ),
                        );
                      },
                      elevation: 10.0,
                      fillColor: Colors.white,
                      child: Icon(
                        Icons.share_outlined,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      padding: EdgeInsets.all(5.0),
                      shape: CircleBorder(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: 350,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.network(
                      'https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png',
                      fit: BoxFit.fill,
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 90,
                  width: 300,
                  child: Text(
                    'DRDO invites EoI to transfer technology of 2-DG drug for bulk production',
                    style: TextStyle(
                      color: Colors.blue.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 280,
                  child: Text(
                      "2-DG was developed by the Institute of Nuclear Medicine 2-DG was developed by the Institute of Nuclear Medicine and He has further communicated that there should a visible publ and He has further communicated that there should a visible publ 2-DG was developed by the Institute of Nuclear Medicine and He has further communicated that there should a visible publ 2-DG was developed by the Institute of Nuclear Medicine and He has further communicated that there should a visible publ ",
                      // maxLines: 3,
                      textAlign: TextAlign.start,
                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
