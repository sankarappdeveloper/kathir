import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomIndicatorState();
  }
}

class CustomIndicatorState extends State<CustomIndicator> {
  int currentPos = 0;
  List<String> listPaths = [
    "https://cdn.dribbble.com/users/271577/screenshots/2646272/services-6_5.png",
    "https://i.ytimg.com/vi/c3eoMcyTRBQ/maxresdefault.jpg",
    "https://cdn.pixabay.com/photo/2016/07/27/14/58/lily-1545487_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729514_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //  Center(
    //     child:
    return Container(
      // height: 500,
      // child: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 190,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: listPaths.length,
            options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPos = index;
                  });
                }),
            itemBuilder: (context, index, int) {
              return MyImageView(listPaths[index]);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listPaths.map((url) {
            int index = listPaths.indexOf(url);
            return Container(
              width: 5.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPos == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
    // );
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.blue,
      // elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        // height: 500,
        // width: double.infinity,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imgPath), fit: BoxFit.cover),
          // borderRadius: BorderRadius.circular(20.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        width: 300,
        // child: Card(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20.0),
        //   ),
        //   // decoration: BoxDecoration(borderRadius: BorderRadius.all(),),
        //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // child: FittedBox(
        //   //   fit: BoxFit.cover,
        //   // child: Image.network(
        //   //   imgPath,
        //   //   fit: BoxFit.fill,
        //   // ),
        // ),
        // ),
      ),
    );
  }
}
