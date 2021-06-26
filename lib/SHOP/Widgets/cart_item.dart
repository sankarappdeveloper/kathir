import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/cart.dart';
import 'package:provider/provider.dart';

class CartItems extends StatelessWidget {
  //  const CartItems({Key key}) : super(key: key);
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;
  CartItems(
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 50,
        ),
        color: Colors.redAccent,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          child: ListTile(
            leading: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                // border:
              ),
              // radius: 40,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Rs.$price',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            title: Text(title),
            subtitle: Text('Total: \$${(price * quantity)}'),
            trailing: Text('$quantity x'),
          ),
          padding: EdgeInsets.all(8),
        ),
      ),
    );
  }
}
