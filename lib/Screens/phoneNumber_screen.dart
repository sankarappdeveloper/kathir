import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'otp_screen.dart';

class PhoneNumer extends StatefulWidget {
  @override
  _PhoneNumerState createState() => _PhoneNumerState();
}

class _PhoneNumerState extends State<PhoneNumer> {
  final _formKey = GlobalKey<FormState>();

  String _phonenuber = '';

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  SmsAutoFill smsAutoFill = SmsAutoFill();

  String strVerificationId;

  final globalKey = GlobalKey<ScaffoldState>();

  TextEditingController phoneNumEditingController = TextEditingController();

  TextEditingController smsEditingController = TextEditingController();

  bool showVerifyNumberWidget = true;

  bool showVerificationCodeWidget = false;

  bool showSuccessWidget = false;

  @override
  void initState() {
    super.initState();
    getCurrentNumber();
  }

  getCurrentNumber() async {
    phoneNumEditingController.text = await smsAutoFill.hint;
  }

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
                              if (showVerifyNumberWidget)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 20, left: 20),
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
                                        onChanged: (value) =>
                                            _phonenuber = value,
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
                                        borderRadius:
                                            BorderRadius.circular(15)),
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

  Future<void> phoneNumberVerification() async {
    PhoneVerificationCompleted phoneVerificationCompleted =
        (PhoneAuthCredential phoneAuthCredential) async {
      await firebaseAuth.signInWithCredential(phoneAuthCredential);
      displayMessage(
          "Phone number is automatically verified and user signed in: ${firebaseAuth.currentUser.uid}");
      setState(() {
        showVerifyNumberWidget = false;
        showVerificationCodeWidget = false;
        showSuccessWidget = true;
      });
    };

    PhoneVerificationFailed phoneVerificationFailed =
        (FirebaseAuthException authException) {
      displayMessage(
          'Phone number verification is failed. Code: ${authException.code}. Message: ${authException.message}');
    };

    PhoneCodeSent phoneCodeSent =
        (String verificationId, [int forceResendingToken]) async {
      displayMessage('Please check your phone for the verification code.');
      strVerificationId = verificationId;
      setState(() {
        showVerifyNumberWidget = false;
        showVerificationCodeWidget = true;
      });
    };

    PhoneCodeAutoRetrievalTimeout phoneCodeAutoRetrievalTimeout =
        (String verificationId) {
      displayMessage("verification code: " + verificationId);
      strVerificationId = verificationId;
      setState(() {
        showVerifyNumberWidget = false;
        showVerificationCodeWidget = true;
      });
    };

    try {
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumEditingController.text,
          timeout: const Duration(seconds: 5),
          verificationCompleted: phoneVerificationCompleted,
          verificationFailed: phoneVerificationFailed,
          codeSent: phoneCodeSent,
          codeAutoRetrievalTimeout: phoneCodeAutoRetrievalTimeout);
    } catch (e) {
      displayMessage("Failed to Verify Phone Number: ${e}");
    }
  }

  void displayMessage(String message) {
    globalKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }

  void signInWithPhoneNumber() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: strVerificationId,
        smsCode: smsEditingController.text,
      );

      final User user =
          (await firebaseAuth.signInWithCredential(credential)).user;

      displayMessage("Successfully signed in UID: ${user.uid}");

      setState(() {
        showVerificationCodeWidget = false;
        showSuccessWidget = true;
      });
    } catch (e) {
      displayMessage("Failed to sign in: " + e.toString());
    }
  }
}

//  Future<void> phoneNumberVerification() async {
//     PhoneVerificationCompleted phoneVerificationCompleted =
//         (PhoneAuthCredential phoneAuthCredential) async {
//       await firebaseAuth.signInWithCredential(phoneAuthCredential);
//       displayMessage(
//           "Phone number is automatically verified and user signed in: ${firebaseAuth.currentUser.uid}");
//       setState(() {
//         showVerifyNumberWidget = false;
//         showVerificationCodeWidget = false;
//         showSuccessWidget = true;
//       });
//     };

//     PhoneVerificationFailed phoneVerificationFailed =
//         (FirebaseAuthException authException) {
//       displayMessage(
//           'Phone number verification is failed. Code: ${authException.code}. Message: ${authException.message}');
//     };

//     PhoneCodeSent phoneCodeSent =
//         (String verificationId, [int forceResendingToken]) async {
//       displayMessage('Please check your phone for the verification code.');
//       strVerificationId = verificationId;
//       setState(() {
//         showVerifyNumberWidget = false;
//         showVerificationCodeWidget = true;
//       });
//     };

//     PhoneCodeAutoRetrievalTimeout phoneCodeAutoRetrievalTimeout =
//         (String verificationId) {
//       displayMessage("verification code: " + verificationId);
//       strVerificationId = verificationId;
//       setState(() {
//         showVerifyNumberWidget = false;
//         showVerificationCodeWidget = true;
//       });
//     };

//     try {
//       await firebaseAuth.verifyPhoneNumber(
//           phoneNumber: phoneNumEditingController.text,
//           timeout: const Duration(seconds: 5),
//           verificationCompleted: phoneVerificationCompleted,
//           verificationFailed: phoneVerificationFailed,
//           codeSent: phoneCodeSent,
//           codeAutoRetrievalTimeout: phoneCodeAutoRetrievalTimeout);
//     } catch (e) {
//       displayMessage("Failed to Verify Phone Number: ${e}");
//     }
//   }

//   Future<void> verifyPhone(phoneno) async {
//     final PhoneVerificationCompleted verified = (AuthCredential authResult) {
//       // print("SMS page compleate1");
//       signIn(authResult);
//     };

//     final PhoneVerificationFailed verificatoinfailed = (authException) {
//       Flushbar(
//         title: "Error ",
//         message: '${authException.message}',
//         duration: Duration(seconds: 3),
//       )..show(context);
//       // print('${authException.message}');
//     };

//     final PhoneCodeSent smsSent = (String verId, [int forceResend]) {
//       this.verifycationid = verId;
//     };
//     final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId) {
//       this.verifycationid = verId;
//       setState(() {
//         this.codeSent = true;
//       });
//     };
//     await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: phoneno,
//         timeout: const Duration(seconds: 5),
//         verificationCompleted: verified,
//         verificationFailed: verificatoinfailed,
//         codeSent: smsSent,
//         codeAutoRetrievalTimeout: autoTimeout);
//   }

//   signIn(AuthCredential authCreds) {
//     FirebaseAuth.instance.signInWithCredential(authCreds).then((value) async {
//       pr.hide();
//       if (value.additionalUserInfo.isNewUser) {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => EditProfileScreen(
//                       back: false,
//                     )));
//       } else {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => MainTabs()));
//       }
//       //add user data
//       DocumentReference ref =
//           FirebaseFirestore.instance.collection("users").doc(value.user.uid);

//       return ref.set({
//         'uid': value.user.uid,
//         'user': 'phone',
//         'phone number': value.user.phoneNumber,
//         'lastSeen': DateTime.now()
//       }, SetOptions(merge: true));
//     });
//   }

// //
//   signInWithOTP(smsCode, verId) {
//     pr.show();
//     // print("otp send  compleate");
//     AuthCredential authCreds =
//         PhoneAuthProvider.credential(verificationId: verId, smsCode: smsCode);
//     signIn(authCreds);
//   }
// }

// class LoginSMSConstants {
//   static const String countryCodeDefault = 'IN';
//   static const String dialCodeDefault = '+91';
//   static const String nameDefault = 'India';
// }
