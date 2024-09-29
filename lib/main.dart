import 'package:flutter/material.dart';
import 'screens/emergency_details.dart';
import 'screens/home_page.dart';
import 'screens/live_map_page.dart';
import 'screens/search_page.dart'; // Import the SearchPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emergency App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define the initial route (HomePage)
      initialRoute: '/home',
      // Define routes for navigation
      routes: {
        '/home': (context) => HomePage(), // HomePage Route
        '/emergencyDetails': (context) => EmergencyDetailsPage(), // EmergencyDetails Route
        '/search': (context) => SearchPage(), // SearchPage Route
        '/live_map': (context) => LiveMapPage(),
      },
    );
  }
}
