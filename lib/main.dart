// // import 'package:connectivity/connectivity.dart';
// import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:project_1/shop_mainScreen.dart';
// import 'package:project_1/Widgets/maps.dart';
import 'InterNet_connectivity/connection.dart';

import 'package:provider/provider.dart';
import 'package:project_1/InterNet_connectivity/net_home.dart';
import 'package:project_1/Maps/medium_map.dart';
import 'Maps/googlmap_screen.dart';
import 'SHOP/Providers/cart.dart';
import 'SHOP/Providers/order.dart';
import 'SHOP/Providers/products_provider.dart';
import 'SHOP/Screens/Cart_Screen.dart';
import 'SHOP/Screens/order_screen.dart';
import 'SHOP/Screens/product_detail_screen.dart';
import 'SHOP/Screens/screens.dart';
import 'Screens/home_screen.dart';
// import 'Widgets/map_update.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Connection()),
        ChangeNotifierProvider(
          create: (ctx) => Products(),
          // value: Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
          // value: Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
          // value: Cart(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      // MultiProvider(
      // providers: [
      //   // StreamProvider(
      //   //     create: (context) => Connectivity().onConnectivityChanged),
      //   ChangeNotifierProvider(create: (_) => Connection()),
      // ],

      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),

        routes: {
          ProductDetails.routeName: (ctx) => ProductDetails(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen()
        },
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => HomePage(
        //         title: 'hii',
        //       ),
        // },
      ),
    );
  }
}
