import 'package:flutter/material.dart';
import 'search_page.dart';
import 'widgets/bottom_nav_bar.dart';

class EmergencyDetailsPage extends StatelessWidget {
  final List<String> gridItems = [
    'Emergency Type', // Replace these with actual item data
    'Emergency Responder Role',
    'Destination',
    'Email',
    'Optimized Route',
    'ETA',
    'Item 7',
    'Item 8',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false, // Prevents the default back button from appearing
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white), // Set the icon color to white
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Expanded(
              child: Text(
                'Emergency Details',
                textAlign: TextAlign.center, // Center-align the title text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white), // Set the icon color to white
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()), // Navigate to SearchPage
                );// Handle search button press
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Circular Avatar with static map
          const Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 100, // Adjust the radius as needed
              backgroundImage: AssetImage('assets/images/static_map.jpg'), // Your static map image
            ),
          ),

          // Grid layout for 4 rows and 2 columns
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns
                childAspectRatio: 1, // Aspect ratio for grid items
              ),
              padding: const EdgeInsets.all(16.0),
              itemCount: gridItems.length, // Number of items in the list
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF2B2B2B), // Background color of each cell
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: Center(
                    child: Text(
                      gridItems[index], // Use actual item data
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),

          // Horizontal buttons
          const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                RoundedButton(text: 'Select'),
                SizedBox(height: 10), // Space between buttons
                RoundedButton(text: 'Emergency Call'),
                SizedBox(height: 10), // Space between buttons
                RoundedButton(text: 'Alert'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Color(0xFF161616), // Background color
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;

  const RoundedButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Stretch the button throughout the screen
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2B2B2B), // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
