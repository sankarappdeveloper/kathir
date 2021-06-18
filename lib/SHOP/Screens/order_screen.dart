import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/order.dart' show Orders;
import 'package:project_1/SHOP/Widgets/app_drawer.dart';
import 'package:project_1/SHOP/Widgets/order_items.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  // const OrderScreen({Key? key}) : super(key: key);
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}
