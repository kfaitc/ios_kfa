// // ignore_for_file: prefer_final_fields, prefer_const_constructors, camel_case_types, unnecessary_new

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:kfa_project/screen/Home/Customs/check_map.dart';

// class Detail_Screen extends StatefulWidget {
//   Detail_Screen({
//     Key? key,
//     required this.lat,
//     required this.log,
//   }) : super(key: key);
//   double? log;
//   double? lat;

//   @override
//   State<Detail_Screen> createState() => _ScreenState();
// }

// class _ScreenState extends State<Detail_Screen> {
//   Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
//   LatLng latLng = const LatLng(11.5489, 104.9214);
//   final Set<Marker> marker = new Set();
//   Completer<GoogleMapController> _controller = Completer();
//   double lat = 37.42796133580664;
//   double log = -122.085749655962;
//   String? commune;

//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//   List<Marker> _marker = [];

//   var district;
//   @override
//   void initState() {
//     super.initState();
//   }

//   String? province;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         mapToolbarEnabled: true,
//         myLocationEnabled: true,
//         initialCameraPosition: _kGooglePlex,
//         markers: ((num > 0) ? Set<Marker>.of(markers.values) : getmarkers()),
//         // markers: Set.of(_marker),
//         onMapCreated: (GoogleMapController controlller) {
//           _controller.complete(controlller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(
//             builder: (context) {
//               return Check_map(
//                 province: (value) {
//                   setState(() {
//                     province = value;
//                   });
//                 },
//                 district: (value) {
//                   setState(() {
//                     district = value;
//                   });
//                 },
//                 lat: (value) {
//                   setState(() {
//                     lat = value;
//                   });
//                 },
//                 log: (value) {
//                   setState(() {
//                     log = value;
//                   });
//                 },
//                 commune: (value) {
//                   setState(() {
//                     commune = value;
//                   });
//                 },
//               );
//             },
//           ));
//         },
//       ),
//     );
//   }

//   int num = 0;
//   Set<Marker> getmarkers() {
//     //markers to place on map
//     setState(() {
//       marker.add(Marker(
//         //add second marker
//         markerId: MarkerId("showLocation.toString()"),
//         // position: LatLng(lat, log),
//         position: ((num > 0) ? latLng : LatLng(lat, log)), //position of marker
//         icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//       ));
//       // requestModel.lat = lat.toString();
//       // requestModel.lng = log.toString();
//       //add more markers here
//     });

//     return marker;
//   }
// }
