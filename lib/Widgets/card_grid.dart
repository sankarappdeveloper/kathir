import 'package:flutter/material.dart';
import 'package:project_1/Screens/details_screen.dart';
import 'package:project_1/Screens/news_screen.dart';

class CardCatagory extends StatelessWidget {
  // const CardCatagory({Key? key}) : super(key: key);
  final String title;
  CardCatagory(this.title);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsScreen(),
            ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue.shade100,
                  Colors.white,
                ],
              ),
            ),
            // color: Colors.lightBlue.shade100,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),
              )),
            )),
      ),
    );
  }
}
