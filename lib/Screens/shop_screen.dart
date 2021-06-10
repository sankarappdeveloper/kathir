import 'package:flutter/material.dart';
import 'package:project_1/Models/card_model.dart';
import 'package:project_1/Widgets/shop_catagory.dart';

class Shopscreen extends StatelessWidget {
  // const Shopscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.more,
              color: Colors.blue[900],
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Shop',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView(
                    children:
                        Shop_Data.map((e) => ShopCatagory(e.title, e.imageUrl))
                            .toList(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 3 / 2,
                        // mainAxisExtent: 200,
                        mainAxisSpacing: 20,
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
