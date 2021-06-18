// import 'dart:typed_data';
// // import 'package:custom_google_map_markers/locations.dart';
// // import 'package:custom_google_map_markers/view/Markergenerator.dart';
// // import 'package:custom_google_map_markers/view/map_marker.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class GoogleMapScreen extends StatefulWidget {
//   @override
//   _GoogleMapScreenState createState() => _GoogleMapScreenState();
// }

// class _GoogleMapScreenState extends State<GoogleMapScreen> {
//   GoogleMapController mapController;

//   final LatLng _center = const LatLng(28.535517, 77.391029);

//   // List<MapMarker> mapMarkers = [];
//   List<Marker> customMarkers = [];

//   List<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps) {
//     bitmaps.asMap().forEach((mid, bmp) {
//       customMarkers.add(Marker(
//         markerId: MarkerId("$mid"),
//         // position: locations[mid].coordinates,
//         icon: BitmapDescriptor.fromBytes(bmp),
//       ));
//     });
//   }

//   @override
//   // void initState() {
//   //   MarkerGenerator(markerWidgets(), (bitmaps) {
//   //     setState(() {
//   //       mapBitmapsToMarkers(bitmaps);
//   //     });
//   //   }).generate(context);
//   // }
//   //  setState(() {
//   //     // adding a new marker to map
//   //     markers[markerId] = marker;
//   //   });
// // }
//   // void _onMapCreated(GoogleMapController controller) {
//   //   mapController = controller;
//   // }
//   Map<MarkerId, Marker> markers =
//       <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Marker Demo'),
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//       ),
//       body: Container(
//         child: GoogleMap(
//           onMapCreated: _onMapCreated,
//           // markers: customMarkers.toSet(),
//           initialCameraPosition: CameraPosition(
//             target: _center,
//             zoom: 10.0,
//           ),
//           markers: Set<Marker>.of(markers.values),
//         ),
//       ),
//     );
//   }

//   List<Widget> markerWidgets() {
//     // return locations.map((loc) => MapMarker(loc)).toList();
//   }

//   void _add() {
//     var markerIdVal = MyWayToGenerateId();
//     final MarkerId markerId = MarkerId(markerIdVal);

//     // creating a new MARKER
//     final Marker marker = Marker(
//       markerId: markerId,
//       position: LatLng(
//         center.latitude + sin(_markerIdCounter * pi / 6.0) / 20.0,
//         center.longitude + cos(_markerIdCounter * pi / 6.0) / 20.0,
//       ),
//       infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
//       onTap: () {
//         _onMarkerTapped(markerId);
//       },
//     );

//     setState(() {
//       // adding a new marker to map
//       markers[markerId] = marker;
//     });
//   }
// }
