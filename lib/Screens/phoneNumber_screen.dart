import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'otp_screen.dart';

class PhoneNumer extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _phonenuber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  // width: 100,
                  child: Image.asset('assets/phone.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Enter Your Phone Number',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 20),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        // bottom: 10,
                                        top: 10,
                                        right: 10,
                                        left: 20),
                                    child: TextFormField(
                                      // textAlign: Alignment.center,
                                      validator: (value) {
                                        if (value.trim().isEmpty) {
                                          return 'Please enter your Phone Number';
                                        }
                                        if (!RegExp(r'^(?:[+0]9)?[0-9]{10}$')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid phone Number';
                                        }
                                        return null;
                                      },
                                      onChanged: (value) => _phonenuber = value,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.phone_android,
                                          color: Colors.blueAccent,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Mobile Number",
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.5), //color of shadow
                                          spreadRadius: 3, //spread radius
                                          blurRadius: 7, // blur radius
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 40,
                                  width: 300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: GestureDetector(
                            child: Icon(
                              FontAwesomeIcons.arrowCircleRight,
                              color: Colors.blue[700],
                              size: 40,
                            ),
                            onTap: () {
                              final isValid = _formKey.currentState.validate();
                              if (isValid) {
                                print('Everything looks good!');
                                print(_phonenuber);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PinCodeVerificationScreen(_phonenuber),
                                  ),
                                );
                              }
                            },
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
    );
  }
}
