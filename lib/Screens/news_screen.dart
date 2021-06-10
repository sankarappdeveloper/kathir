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
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blueGrey,
              ),
              onPressed: () {},
            ),
            title: Text(
              "Today's NEWS",
              style: TextStyle(color: Colors.blue[900]),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
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
          ),
        ),
        body: Container(
          child: ListView(
            children: News_Data.map((e) => NewsCatagory(e.title, e.imageUrl))
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
    );
  }
}
