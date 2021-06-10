import 'package:flutter/material.dart';
import 'package:project_1/Models/card_model.dart';
import 'package:project_1/Screens/profile_screen.dart';
import 'package:project_1/Screens/shop_screen.dart';
import 'package:project_1/Widgets/card_grid.dart';
import 'package:project_1/Widgets/customSlider.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Shopscreen(),
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
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue[900],
        // currentIndex: _currentNav,
        // type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        elevation: 20,
        unselectedItemColor: Colors.blue[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.blue[900],
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              // color: Colors.blue[900],
            ),
            title: Text("Shop"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              // color: Colors.blue[900],
            ),
            title: Text("Profile"),
          )
        ],
        onTap: itemTab,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key)

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                        color: Colors.blue[900],
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Model App',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    child: CustomIndicator(),
                  ),
                ),
                Container(
                  height: 400,
                  child: GridView(
                    children:
                        Card_Data.map((e) => CardCatagory(e.title)).toList(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 3 / 2,
                        // mainAxisExtent: 200,
                        mainAxisSpacing: 20,
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
