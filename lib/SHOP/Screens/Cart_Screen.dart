import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/cart.dart';
import 'package:project_1/SHOP/Providers/order.dart';
import 'package:project_1/SHOP/Widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  // const CartScreen({Key key}) : super(key: key);
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            // height: 200,
            decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),

            child: Container(
              height: 150,
              child: Container(
                alignment: Alignment(0.0, 200.5),
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  margin: EdgeInsets.all(15),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            // Spacer(),
                            Chip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.blue[200],
                                label: Text(
                                  'Rs.' + '${cart.totalAmount.toString()}',
                                  style: TextStyle(color: Colors.black),
                                )),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            // FlatButton(
                            //     onPressed: () {
                            //       Provider.of<Orders>(context, listen: false)
                            //           .addOrder(
                            //         cart.items.values.toList(),
                            //         cart.totalAmount,
                            //       );
                            //       cart.clear();
                            //     },
                            //     child: Text('Order Now')),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              elevation: 6,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              backgroundColor: Colors.lightGreen[500],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              Provider.of<Orders>(context, listen: false)
                                  .addOrder(
                                cart.items.values.toList(),
                                cart.totalAmount,
                              );
                              cart.clear();
                            },
                            child: Text(
                              'Order Now',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
              child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (ctx, i) => CartItems(
                      cart.items.values.toList()[i].id,
                      cart.items.keys.toList()[i],
                      cart.items.values.toList()[i].price,
                      cart.items.values.toList()[i].quantity,
                      cart.items.values.toList()[i].title)))
        ],
      ),
    );
  }
}
