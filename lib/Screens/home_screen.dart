import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_1/Models/card_model.dart';
import 'package:project_1/SHOP/Screens/screens.dart';
import 'package:project_1/Screens/event_screen.dart';
import 'package:project_1/Screens/offers_screen.dart';
import 'package:project_1/Widgets/internet_uti.dart';
import 'package:project_1/Screens/profile_screen.dart';
import 'package:project_1/Screens/shop_screen.dart';
import 'package:project_1/Widgets/card_grid.dart';
import 'package:project_1/Widgets/customSlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:connectivity/connectivity.dart';
import '../shop_mainScreen.dart';
import 'news_screen.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProductOverViewScreen(),
    ProfileScreen(),
  ];
  void itemTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'Home',
      //     style: TextStyle(color: Colors.blue[900]),
      //   ),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.blue[900],
      //   // currentIndex: _currentNav,
      //   // type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedIndex,
      //   elevation: 20,
      //   unselectedItemColor: Colors.blue[400],
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         // color: Colors.blue[900],
      //       ),
      //       title: Text("Home"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.category,
      //         // color: Colors.blue[900],
      //       ),
      //       title: Text("Shop"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_box,
      //         // color: Colors.blue[900],
      //       ),
      //       title: Text("Profile"),
      //     )
      //   ],
      //   onTap: itemTab,
      // ),
    );
  }
}

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key)

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription subscription;
  // void initState() {
  //   super.initState();

  //   subscription =
  //       Connectivity().onConnectivityChanged.listen(showConnectivitySnackBar);
  // }

  @override
  void dispose() {
    subscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Model App',
                      style: TextStyle(
                        color: Colors.black,
                        // color: Colors.blue[800],
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                Column(
                  children: [
                    Container(height: 220, child: CustomIndicator()),
                  ],
                ),
                // ),
                SizedBox(
                  height: 10,
                ),
                // Expanded(
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  height: 400,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                            // color: Colors.blue[900],
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsScreen()),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                // Colors.pink[50],
                                                Colors.pink[100],
                                                Colors.pinkAccent,
                                              ],
                                            )),
                                        child: CircleAvatar(
                                          radius: 28,
                                          backgroundColor: Colors.transparent,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Center(
                                              child: Image.asset(
                                                'assets/news1.png',
                                                // cacheHeight: 100,
                                                // cacheWidth: 100,
                                                // height: 100,
                                                // width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "News",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ShopMainScreen()),
                                );
                              },
                              child: Card(
                                // clipBehavior: ,
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                // Colors.pink[50],
                                                Colors.blue[200],
                                                Colors.blue,
                                              ],
                                            )),
                                        child: CircleAvatar(
                                          radius: 28,
                                          backgroundColor: Colors.transparent,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              FontAwesomeIcons.shopify,
                                              color: Colors.white,
                                              // color: Colors.pink[400],

                                              size: 35,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Shop",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                // Colors.pink[50],
                                                Colors.lightGreen[500],
                                                Colors.lightGreen,
                                              ],
                                            )),
                                        child: CircleAvatar(
                                          radius: 28,
                                          backgroundColor: Colors.transparent,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.white,

                                              // color: Colors.blue[900],
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Profile",
                                        style:
                                            TextStyle(color: Colors.grey[900]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              // Colors.pink[50],
                                              Colors.yellow[500],
                                              Colors.yellow,
                                            ],
                                          )),
                                      child: CircleAvatar(
                                        radius: 28,
                                        backgroundColor: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.settings,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Settings",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OffersScreen()),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 28,
                                        backgroundColor: Colors.yellow[50],
                                        child: Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: Center(
                                              child: Image.network(
                                                  'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX11070267.jpg')
                                              //  Icon(
                                              //   Icons.local_offer,
                                              //   color: Colors.blue[900],
                                              //   size: 35,
                                              // ),
                                              ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Offers",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EventScreen()),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 28,
                                        backgroundColor: Colors.brown[50],
                                        child: Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: Center(
                                            child: Image.network(
                                                'https://tickera-wpsalad.netdna-ssl.com/wp-content/themes/tickera/style/img/freebies/icons/events/6.png'),
                                            //  Icon(
                                            //   Icons.emoji_events_rounded,
                                            //   color: Colors.blue[900],
                                            //   size: 35,
                                            // ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Events",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                // Container(
                //   height: 400,
                //   child: GridView(
                //     children:
                //         Card_Data.map((e) => CardCatagory(e.title)).toList(),
                //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //         childAspectRatio: 3 / 2,
                //         // mainAxisExtent: 200,
                //         mainAxisSpacing: 20,
                //         maxCrossAxisExtent: 200,
                //         crossAxisSpacing: 20),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

//   void showConnectivitySnackBar(ConnectivityResult result) {
//     final hasInternet = result != ConnectivityResult.none;
//     final message = hasInternet
//         ? 'You have again ${result.toString()}'
//         : 'You have no internet';
//     final color = hasInternet ? Colors.green : Colors.red;

//     Utils.showTopSnackBar(context, message, color);
//   }
}
