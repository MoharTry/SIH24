import 'package:flutter/material.dart';
import 'widgets/bottom_nav_bar.dart'; // Import your BottomNavBar component
import 'package:carousel_slider/carousel_slider.dart';

class SearchPage extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {
      'image': 'assets/images/destination1.jpg',
      'name': 'Destination 1',
      'eta': '15 mins',
    },
    {
      'image': 'assets/images/destination2.jpg',
      'name': 'Destination 2',
      'eta': '30 mins',
    },
    {
      'image': 'assets/images/destination3.jpg',
      'name': 'Destination 3',
      'eta': '45 mins',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Navigation',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, '/home'); // Navigate back to the Home Page
          },
        ),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Destination',
                hintStyle:
                    const TextStyle(color: Colors.white70), // Hint text color
                filled: true,
                fillColor: const Color(
                    0xFF2B2B2B), // Background color of the search bar
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none, // Remove border line
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 20.0),
                prefixIcon: const Icon(
                  Icons.search, // Search icon
                  color: Colors.white70,
                ),
              ),
              style: const TextStyle(color: Colors.white), // Text color
            ),
          ),
          // Left aligned "Search destination" and "Clear Search"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Search destination',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8), // Space between the two texts
                GestureDetector(
                  onTap: () {
                    // Logic to clear the search can go here
                  },
                  child: const Text(
                    'Clear Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Carousel of destinations
          CarouselSlider(
            options: CarouselOptions(
              height: 200, // Set height for the carousel
              enlargeCenterPage: false,
              enableInfiniteScroll: true, // Disable infinite scrolling
              autoPlay: false, // Disable autoplay
              viewportFraction: 0.3, // Show 2 items side by side
            ),
            items: destinations.map((destination) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0), // Margin between items
                    child: Column(
                      children: [
                        // Destination image as a rounded rectangle
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Rounded corners
                          child: Image.asset(
                            destination['image']!,
                            height:150,
                            width:500, // Adjust width and height as needed
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10), // Spacing between image and name

                        // Destination name
                        Text(
                          destination['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // ETA Text
                        Text(
                          destination['eta']!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          // Text for "Route Suggestions"
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft, // Align text to the left
              child: Text(
                "Route Suggestions",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Container for the circular avatar and information
          const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35, // Adjust the radius for the circular avatar
                  backgroundImage: AssetImage('assets/images/static_map.jpg'), // Change to your avatar image
                ),
                SizedBox(width: 16), // Space between avatar and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Route Clearance Status",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Live Traffic Updates",
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Distance: 4.8 km",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 6),
                    ],
                  ),
                ),
              ],
            ),
          ),const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35, // Adjust the radius for the circular avatar
                  backgroundImage: AssetImage('assets/images/static_map.jpg'), // Change to your avatar image
                ),
                SizedBox(width: 16), // Space between avatar and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Response Location",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Real-time Updates",
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Distance: 5 km",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Add more content below as needed
        ]
      ),
      backgroundColor: const Color(0xFF161616), // Set the background color

      bottomNavigationBar: BottomNavBar(currentIndex: 0), // Add the BottomNavBar here
    );
  }
}
