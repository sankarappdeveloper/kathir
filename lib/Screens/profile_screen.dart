import 'package:flutter/material.dart';
import 'package:project_1/Widgets/input_decoration.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/03/03/06/26/child-3194977_960_720.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.axslNHD9b3zMPu_y-x_ynAD5D5?pid=ImgDet&w=424&h=424&rs=1"),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "A R Kathiresh",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tamil Nadu, India",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mobile App Developer",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Edit Profile"),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: buildInputDecorationsuf(
                                Icons.edit,
                                "Kathir Kathiresh",
                              ),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter phone no ';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                // phone = value;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: buildInputDecorationsuf(
                                Icons.edit,
                                "4563783923",
                              ),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter phone no ';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                // phone = value;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: buildInputDecorationsuf(
                                Icons.edit,
                                "Tamil Nadu, India",
                              ),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter phone no ';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                // phone = value;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          elevation: 6,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          backgroundColor: Colors.blue.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
