import 'package:flutter/material.dart';

class NewsCatagory extends StatelessWidget {
  // const NewsCatagory({Key? key}) : super(ke
  final String title;
  final String imageUrl;

  NewsCatagory(this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover),
                // borderRadius: BorderRadius.circular(20.0),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              // Image.network(

              //   'https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png',
              //   fit: BoxFit.cover,
              height: 90,
              width: 100,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      width: 180,
                      height: 60,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.w800),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Jan-10-2021",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      // Spacer(),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.timer,
                        size: 20,
                        color: Colors.grey,
                      ),
                      Text(
                        "10 min read",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
