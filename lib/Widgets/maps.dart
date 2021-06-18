// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:flutter_map/flutter_map.dart';
// // import 'package:latlong/latlong.dart' as latLng;
// import 'dart:async';

// // class Mapsflutter extends StatefulWidget {
// //   // const Mapsflutter({Key? key}) : super(key: key);
// //   @override
// //   _MapsflutterState createState() => _MapsflutterState();
// // }

// // class _MapsflutterState extends State<Mapsflutter> {
// //   double _latitude = 51.5675;

// //   @override
// //   Widget build(BuildContext context) {
// //     return FlutterMap(
// //       options: MapOptions(
// //         // mapController: _mapController,
// //         bounds: LatLngBounds((58.8, 6.1),(59, 6.2)),
// //         boundsOptions: FitBoundsOptions(padding: EdgeInsets.all(8.0)),
// //       ),
// //       // options: new MapOptions(
// //       //   center: LatLng(51.5, -0.09),
// //       //   zoom: 13.0,
// //       // ),
// //       layers: [
// //         TileLayerOptions(
// //             urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
// //             subdomains: ['a', 'b', 'c']),
// //         MarkerLayerOptions(
// //           markers: [
// //             Marker(
// //               width: 80.0,
// //               height: 80.0,
// //               point: LatLng(_latitude, _latitude),
// //               builder: (ctx) => Container(
// //                 child: FlutterLogo(),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ],
// //     );
// //   }
// // }

// class GmapPoints extends StatefulWidget {
//   // GmapPoints({Key? key}) : super(key: key);

//   @override
//   _GmapPointsState createState() => _GmapPointsState();
// }

// class _GmapPointsState extends State<GmapPoints> {
//   Completer<GoogleMapController> _controller = Completer();
//   // static final CameraPosition _kGooglePlex = CameraPosition(
//   //   target: LatLng(37.42796133580664, -122.085749655962),
//   //   zoom: 14.4746,
//   // );

//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //  child: null,
//       body: SafeArea(
//         child: GoogleMap(
//           // myLocationButtonEnabled: true,
//           myLocationEnabled: true,
//           zoomControlsEnabled: false,
//           compassEnabled: true,
//           mapToolbarEnabled: true,
//           // mapType: MapType.hybrid,
//           initialCameraPosition: _kLake,
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//         ),
//       ),
//     );
//   }
// }
