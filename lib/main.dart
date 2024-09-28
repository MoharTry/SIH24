import 'package:flutter/material.dart';
import 'screens/emergency_details.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(), // Your main home page
        '/emergencyDetails': (context) => EmergencyDetailsPage(), // The emergency details page
      },
    );
  }
}
