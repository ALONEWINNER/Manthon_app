// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_collection_literals, await_only_futures

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:search_map_place/search_map_place.dart';

// ignore: must_be_immutable
class Clustering2 extends StatefulWidget {
  String lan;
  String lati;
  String rape;

  Clustering2(
    this.lan,
    this.lati,
    this.rape,
  );
  @override
  _Clustering2State createState() => _Clustering2State();
}

class _Clustering2State extends State<Clustering2> {
  late GoogleMapController mapController;

  Set<Circle> cr = Set.from([
    Circle(
        circleId: CircleId("yas"),
        center: LatLng(28.644800, 77.216721),
        radius: 4000,
        fillColor: Colors.green.withOpacity(.3),
        strokeColor: Colors.green.withOpacity(.4)),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 30, 10, 0),
              child: SearchMapPlaceWidget(
                hasClearButton: true,
                placeType: PlaceType.address,
                placeholder: 'search location',
                apiKey: 'AIzaSyBJkPY8uJ9qxn27rS1w9Wvvdjn6xD0gYEk',
                onSelected: (Place place) async {
                  Geolocation geolocation = await place.geolocation;
                  mapController.animateCamera(
                      CameraUpdate.newLatLng(geolocation.coordinates));
                  mapController.animateCamera(
                      CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 600.0,
                child: GoogleMap(
                  circles: Set.from([
                    Circle(
                        circleId: CircleId("yas"),
                        center: LatLng(double.parse(widget.lan),
                            double.parse(widget.lati)),
                        radius: double.parse(widget.rape * 100),
                        fillColor: Colors.green.withOpacity(.3),
                        strokeColor: Colors.green.withOpacity(.4)),
                  ]),
                  markers: Set.from([
                    Marker(
                      onTap: () {},
                      markerId: MarkerId('ballia'),
                      position: LatLng(
                          double.parse(widget.lan), double.parse(widget.lati)),
                      infoWindow: InfoWindow(title: 'ballia'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueViolet,
                      ),
                    ),
                  ]),
                  onMapCreated: (GoogleMapController googleMapController) {
                    setState(() {
                      mapController = googleMapController;
                    });
                  },
                  initialCameraPosition: CameraPosition(
                      target: LatLng(
                          double.parse(widget.lan), double.parse(widget.lati)),
                      zoom: 10),
                  mapType: MapType.terrain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_new, duplicate_ignore, prefer_final_fields, use_key_in_widget_constructors, unused_element, prefer_collection_literals, unused_import

// import 'dart:async';
// import 'package:flutter/material.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// // ignore: import_of_legacy_library_into_null_safe
// import 'package:search_map_place/search_map_place.dart';

// class Clustering extends StatefulWidget {
//   @override
//   ClusteringState createState() => ClusteringState();
// }

// class ClusteringState extends State<Clustering> {
//   Completer<GoogleMapController> _controller = Completer();
//   late GoogleMapController mapController;
//   @override
//   void initState() {
//     super.initState();
//   }

//   double zoomVal = 5.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           // Container(
//           //   margin: EdgeInsets.fromLTRB(20, 30, 10, 0),
//           //   child: SearchMapPlaceWidget(
//           //     hasClearButton: true,
//           //     placeType: PlaceType.address,
//           //     placeholder: 'search location..',
//           //     apiKey: 'AIzaSyBJkPY8uJ9qxn27rS1w9Wvvdjn6xD0gYEk',
//           //     onSelected: (Place place) async {
//           //       Geolocation geolocation = await place.geolocation;
//           //       mapController.animateCamera(
//           //           CameraUpdate.newLatLng(geolocation.coordinates));
//           //       mapController.animateCamera(
//           //           CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
//           //     },
//           //   ),
//           // ),

//           _buildGoogleMap(context),
//           _zoomminusfunction(),
//           _zoomplusfunction(),
//           // _buildContainer(),
//         ],
//       ),
//     );
//   }

//   Widget _zoomminusfunction() {
//     return Align(
//       alignment: Alignment.topLeft,
//       child: IconButton(
//           icon: Icon(Icons.exposure_minus_1, size: 40, color: Colors.red),
//           onPressed: () {
//             zoomVal--;
//             _minus(zoomVal);
//           }),
//     );
//   }

//   Widget _zoomplusfunction() {
//     return Align(
//       alignment: Alignment.topRight,
//       child: Container(
//         margin: EdgeInsets.only(left: 10),
//         child: IconButton(
//             // ignore: prefer_const_constructors
//             icon: Icon(Icons.plus_one, size: 40, color: Colors.red),
//             onPressed: () {
//               zoomVal++;
//               _plus(zoomVal);
//             }),
//       ),
//     );
//   }

//   Future<void> _minus(double zoomVal) async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(
//         CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
//   }

//   Future<void> _plus(double zoomVal) async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(
//         CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
//   }

//   Widget _buildContainer() {
//     return Align(
//       alignment: Alignment.bottomLeft,
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 20.0),
//         height: 120.0,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             SizedBox(width: 10.0),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _boxes(
//                   "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
//                   40.738380,
//                   -73.988426,
//                   "Crime Prone  Areas"),
//             ),
//             SizedBox(width: 10.0),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _boxes(
//                   "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
//                   40.761421,
//                   -73.981667,
//                   "murder"),
//             ),
//             SizedBox(width: 10.0),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _boxes(
//                   "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
//                   40.732128,
//                   -73.999619,
//                   "prostitution"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _boxes(String _image, double lat, double long, String restaurantName) {
//     return GestureDetector(
//       onTap: () {
//         _gotoLocation(lat, long);
//       },
//       child: Container(
//         child: new FittedBox(
//           child: Material(
//               color: Colors.white,
//               elevation: 14.0,
//               borderRadius: BorderRadius.circular(24.0),
//               shadowColor: Color(0x802196F3),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Container(
//                     width: 180,
//                     height: 200,
//                     child: ClipRRect(
//                       borderRadius: new BorderRadius.circular(24.0),
//                       child: Image(
//                         fit: BoxFit.fill,
//                         image: NetworkImage(_image),
//                       ),
//                     ),
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     );
//   }

//   Widget _buildGoogleMap(BuildContext context) {
//     Completer<GoogleMapController> _controller = Completer();

//     Set<Circle> cr = Set.from([
//       Circle(
//           circleId: CircleId("yas"),
//           center: LatLng(28.644800, 77.216721),
//           radius: 4000,
//           fillColor: Colors.green.withOpacity(.3),
//           strokeColor: Colors.green.withOpacity(.4)),
//     ]);

//     return ListView(
//       scrollDirection: Axis.vertical,
//       children: [
//         Container(
//           margin: EdgeInsets.fromLTRB(20, 30, 10, 0),
//           child: SearchMapPlaceWidget(
//             hasClearButton: true,
//             placeType: PlaceType.address,
//             placeholder: 'search location',
//             apiKey: 'AIzaSyBJkPY8uJ9qxn27rS1w9Wvvdjn6xD0gYEk',
//             onSelected: (Place place) async {
//               Geolocation geolocation = await place.geolocation;
//               mapController.animateCamera(
//                   CameraUpdate.newLatLng(geolocation.coordinates));
//               mapController.animateCamera(
//                   CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
//             },
//           ),
//         ),
//         Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: GoogleMap(
//             buildingsEnabled: true,

//             mapType: MapType.normal,
//             mapToolbarEnabled: true,
//             compassEnabled: true,
//             rotateGesturesEnabled: true,
//             zoomGesturesEnabled: true,
//             zoomControlsEnabled: true,
//             scrollGesturesEnabled: true,

//             initialCameraPosition:
//                 CameraPosition(target: LatLng(28.644800, 77.216721), zoom: 15),

//             //  onMapCreated: (GoogleMapController googleMapController) {
//             //         setState(() {
//             //           mapController = googleMapController;
//             //         });
//             //       },
//             onMapCreated: (GoogleMapController controller) {
//               _controller.complete(controller);
//               setState(() {
//                 mapController = controller;
//               });
//             },
//             // ignore: sdk_version_set_literal
//             markers: {
//               newyork1Marker,
//               newyork2Marker,
//               newyork3Marker,
//               gramercyMarker,
//               bernardinMarker,
//               blueMarker
//             },
//             circles: cr,
//           ),
//         )
//       ],
//     );
//   }

//   Future<void> _gotoLocation(double lat, double long) async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
//       target: LatLng(lat, long),
//       zoom: 15,
//       tilt: 50.0,
//       bearing: 45.0,
//     )));
//   }
// }

Marker gramercyMarker = Marker(
  markerId: MarkerId('Sultanpur'),
  position: LatLng(26.264776, 82.072708),
  infoWindow: InfoWindow(title: 'Sultanpur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker bernardinMarker = Marker(
  onTap: () {},
  markerId: MarkerId('ballia'),
  position: LatLng(25.758503, 84.148911),
  infoWindow: InfoWindow(title: 'ballia'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker blueMarker = Marker(
  markerId: MarkerId('Ambedkar nagar'),
  position: LatLng(26.407057, 82.397972),
  infoWindow: InfoWindow(title: 'Ambedkar nagar'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

//New York Marker

Marker newyork1Marker = Marker(
  markerId: MarkerId('Tanda'),
  position: LatLng(28.975210, 78.942970),
  infoWindow: InfoWindow(title: 'Tanda'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork2Marker = Marker(
  markerId: MarkerId('Basti'),
  position: LatLng(26.822845, 82.763443),
  infoWindow: InfoWindow(title: 'Basti'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork3Marker = Marker(
  markerId: MarkerId('Gorakhpur'),
  position: LatLng(26.765844, 83.364944),
  infoWindow: InfoWindow(title: 'Gorakhpur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
