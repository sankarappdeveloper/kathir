import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _connectionStatus = 'Unknown';
//   final Connectivity _connectivity = Connectivity();
//   StreamSubscription<ConnectivityResult> _connectivitySubscription;

//   @override
//   void initState() {
//     super.initState();
//     initConnectivity();
//     _connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//   }

//   @override
//   void dispose() {
//     _connectivitySubscription.cancel();
//     super.dispose();
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initConnectivity() async {
//     ConnectivityResult result = ConnectivityResult.none;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       result = await _connectivity.checkConnectivity();
//     } on PlatformException catch (e) {
//       print(e.toString());
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) {
//       return Future.value(null);
//     }

//     return _updateConnectionStatus(result);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Connectivity example app'),
//       ),
//       body: Center(child: Text('Connection Status: $_connectionStatus')),
//     );
//   }

//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     switch (result) {
//       case ConnectivityResult.wifi:
//       case ConnectivityResult.mobile:
//       case ConnectivityResult.none:
//         setState(() => _connectionStatus = result.toString());
//         break;
//       default:
//         setState(() => _connectionStatus = 'Failed to get connectivity.');
//         break;
//     }
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String result = '';
//   var Colorsvalue = Colors.green;

//   @override
//   void initState() {
//     checkStatus();
//     super.initState();
//   }
//   // void initState() {
//   //   checkStatus();
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colorsvalue,
//       body: Column(
//         children: [
//           Container(
//             alignment: Alignment.center,
//             child: Text(
//               result != null ? result : 'Unknown',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w700,
//                   fontSize: 25),
//             ),
//           ),
//           RaisedButton(
//             onPressed: () {},
//           )
//         ],
//       ),
//     );
//   }

//   void checkStatus() {
//     Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
//       if (result == ConnectivityResult.mobile ||
//           result == ConnectivityResult.wifi) {
//         ChangeValues("Connected", Colors.purple);
//       } else {
//         ChangeValues("No Internet", Colors.red);
//       }
//     });
//   }

//   void ChangeValues(String resultvalue, Color colorvalue) {
//     setState(() {
//       result = resultvalue;
//       Colorsvalue = colorvalue;
//     });
//   }
// }
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var connectionStatus;
  var _scafoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    connectionStatus = Provider.of<ConnectivityResult>(context);
    return Scaffold(
        key: _scafoldkey,
        appBar: AppBar(
          title: Text('Internet connectivity'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "You are ${(connectionStatus != ConnectivityResult.none ? 'Online' : 'Offline')}",
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  if (connectionStatus == ConnectivityResult.wifi ||
                      connectionStatus == ConnectivityResult.mobile) {
                    _scafoldkey.currentState.hideCurrentSnackBar();
                    _scafoldkey.currentState.showSnackBar(SnackBar(
                        content: Text(
                      ""
                      "You are online!",
                      style: TextStyle(color: Colors.red, fontSize: 18.0),
                    )));
                  } else {
                    _scafoldkey.currentState.hideCurrentSnackBar();
                    _scafoldkey.currentState.showSnackBar(SnackBar(
                        content: Text(
                      ""
                      "You are offline!",
                      style: TextStyle(color: Colors.red, fontSize: 18.0),
                    )));
                  }
                },
                child: Text('Check Status'),
              )
            ],
          ),
        ));
  }
}
