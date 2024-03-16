import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Map(),
      ),
    );
  }
}

// class Map extends StatelessWidget {
//   final Completer<GoogleMapController> _controller = Completer();
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//   }
//
//   Map({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           GoogleMap(
//             onMapCreated: _onMapCreated,
//             initialCameraPosition: CameraPosition(
//               target: _center,
//               zoom: 11.0,
//             ),
//           ),
//           // Text('test')
//         ],
//       ),
//     );
//   }
// }

class Map extends StatelessWidget {
  final Completer<GoogleMapController> _controller = Completer();
  final LatLng _center = const LatLng(45.521563, -122.677433);
  static const LatLng _markerLocation = LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            markers: {
              Marker(
                markerId: MarkerId('marker_id'),
                position: _markerLocation,
                infoWindow: InfoWindow(title: 'My Location'),
                icon: BitmapDescriptor.defaultMarker,
              ),
            },
          ),
        ],
      ),
    );
  }
}
