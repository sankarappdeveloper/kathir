import 'package:flutter/material.dart';
import 'package:project_1/Models/card_model.dart';
import 'package:project_1/Widgets/news_catagory.dart';
import 'package:project_1/Widgets/shop_catagory.dart';

import 'dashboard_screen.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            elevation: 0,
            foregroundColor: Colors.red,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "Today's NEWS",
              style: TextStyle(
                // color: Colors.blue[900],
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator:
                  CircleTabIndicator(color: Colors.pinkAccent, radius: 2),
              labelColor: Colors.pinkAccent,
              indicatorColor: Colors.pinkAccent,
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
          ),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(40),
                  // topRight: Radius.circular(40),
                  ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children:
                    News_Data.map((e) => NewsCatagory(e.title, e.imageUrl))
                        .toList(),
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //   // childAspectRatio: 3 / 2,
                //   mainAxisExtent: 200,
                //   mainAxisSpacing: 20,
                //   // maxCrossAxisExtent: 10,
                //   // crossAxisSpacing: 20,

                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
