import 'package:flutter/material.dart';

class AuthorityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authority Screen'),
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/static_map.jpg',
            fit: BoxFit.cover, // Ensures the image covers the entire background
            height: double.infinity,
            width: double.infinity,
          ),
          // Column to hold the content
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(), // Pushes the following content to the bottom
              // Bottom Centered Text Box
              Container(
                width: double.infinity, // Stretch to full width
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black54, // Semi-transparent background
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Heading
                    Text(
                      '3 Emergency Vehicles Approaching...',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10), // Spacing between heading and details
                    // Vehicle details
                    Text(
                      '1. Ambulance - ETA: 5 min\n'
                          '2. Fire Brigade - ETA: 7 min\n'
                          '3. Police Car - ETA: 10 min',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
