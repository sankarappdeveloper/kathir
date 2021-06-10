import 'package:flutter/material.dart';
import 'package:project_1/Widgets/input_decoration.dart';

import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  String name, email, phone;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        // width: 100,
                        child: Image.asset('assets/5883.jpg'),
                      ),
                    ],
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildHeader('Name :'),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: TextFormField(
                                  decoration: buildInputDecoration(
                                      Icons.person, "Full Name"),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Please Enter Name';
                                    }
                                    return null;
                                  },
                                  onSaved: (String value) {
                                    name = value;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildHeader('Email :'),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: buildInputDecoration(
                                      Icons.email, "Email"),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Please a Enter';
                                    }
                                    if (!RegExp(
                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                        .hasMatch(value)) {
                                      return 'Please a valid Email';
                                    }
                                    return null;
                                  },
                                  onSaved: (String value) {
                                    email = value;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildHeader('Phone Number :'),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: buildInputDecoration(
                                      Icons.phone, "Phone No"),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Please enter phone no ';
                                    }
                                    return null;
                                  },
                                  onSaved: (String value) {
                                    phone = value;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildHeader('Password :'),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: TextFormField(
                                  // controller: password,
                                  keyboardType: TextInputType.text,
                                  decoration: buildInputDecoration(
                                      Icons.lock, "Password"),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Please a Enter Password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          // width: 200,
                          height: 100,
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    if (_formkey.currentState.validate()) {
                                      print("successful");
                                      return;
                                    } else {
                                      print("UnSuccessfull");
                                    }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(
                                          color: Colors.blue, width: 2)),
                                  textColor: Colors.white,
                                  child: Text("Submit"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Text buildHeader(String name) {
  return Text(
    name,
    style: TextStyle(fontSize: 18, color: Colors.indigo),
  );
}
