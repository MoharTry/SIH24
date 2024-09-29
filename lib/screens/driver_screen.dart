import 'package:flutter/material.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Screen'),
      ),
      body: Stack(
        children: [
          // Updated to fit the entire screen
          Image.asset(
            'assets/images/static_map.jpg',
            fit: BoxFit.cover, // Ensures the image covers the entire background
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container for vehicle type positioned at the upper right corner
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.black54, // Semi-transparent background
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Vehicle Type: Ambulance',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const Spacer(),
              // Bigger and fully rounded SOS button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement SOS functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('SOS Sent!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Button color
                    padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0), // Bigger button
                    shape: const CircleBorder(), // Fully rounded button
                  ),
                  child: Text(
                    'SOS',
                    style: TextStyle(color: Colors.white, fontSize: 24), // Set text color to white
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
