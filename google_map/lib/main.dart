import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homescreen());
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(10.02620991225926, 76.33897274346593),
          zoom: 14.0,
        ),
        markers: <Marker>[
          Marker(
            markerId: MarkerId('1'),
            position: LatLng(9.96687152195837, 76.40746562831764),
            infoWindow: InfoWindow(title: 'marker1', snippet: 'marker snippet'),
          ),
        ].toSet(),
      ),
    );
  }
}
