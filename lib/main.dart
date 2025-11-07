import 'package:bike_ride_sharing/Home.dart';
import 'package:bike_ride_sharing/Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RideSharing());
}

class RideSharing extends StatelessWidget {
  const RideSharing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home:  HomeScreen(),
    );
  }
}
