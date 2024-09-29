import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar.dart';

class LiveMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Live Map',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/static_map.jpg', // Path to your static map image
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
      backgroundColor: Color(0xFF161616), // Background color
    );
  }
}
