import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/cart.dart';
import 'package:project_1/SHOP/Screens/Cart_Screen.dart';
import 'package:project_1/SHOP/Widgets/app_drawer.dart';
import 'package:project_1/SHOP/Widgets/badge.dart';
import 'package:project_1/SHOP/Widgets/product_grid.dart';
import 'package:provider/provider.dart';

import 'SHOP/Screens/order_screen.dart';

enum FilterOption { Favorite, All }

class ShopMainScreen extends StatefulWidget {
  //  ShopMainScreen({Key? key}) : super(key: key);

  @override
  _ShopMainScreenState createState() => _ShopMainScreenState();
}

class _ShopMainScreenState extends State<ShopMainScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: AppCall(child: AppDrawer()),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                // color: Colors.blue[700],
                color: Colors.pinkAccent,

                borderRadius: BorderRadius.only(
                    // bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(OrderScreen.routeName);
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Shop',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        onSelected: (FilterOption selectedValue) {
                          setState(() {
                            if (selectedValue == FilterOption.Favorite) {
                              _showOnlyFavorites = true;
                            } else {
                              _showOnlyFavorites = false;
                            }
                          });

                          // print(selectedValue);
                        },
                        itemBuilder: (_) => [
                          PopupMenuItem(
                            child: Text('Only Favorites'),
                            value: FilterOption.Favorite,
                          ),
                          PopupMenuItem(
                            child: Text('All'),
                            value: FilterOption.All,
                          )
                        ],
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      Consumer<Cart>(
                        builder: (_, cart, ch) => Badge(
                          child: ch,
                          value: cart.itemCount.toString(),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(CartScreen.routeName);
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          // labelText: 'search',
                          hintText: 'search',
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Icon(
                            Icons.filter_list,
                            size: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductGrid(_showOnlyFavorites),
            )),
          ],
        ),
      ),
    );
  }
}
