import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Providers/order.dart' as ord;

class OrderItem extends StatelessWidget {
  // const OrderItem({Key? key}) : super(key: key);
  final ord.OrderItem order;

  OrderItem(this.order);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      // color: Colors.blue[50],
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '${order.amount}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              DateFormat("yMMMd").format(order.dateTime),
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              child: IconButton(
                icon: Icon(
                  Icons.expand_more,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
