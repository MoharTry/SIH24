import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Search Destination'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the Home Page
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
                hintStyle: TextStyle(color: Colors.white70), // Hint text color
                filled: true,
                fillColor: Color(0xFF2B2B2B), // Background color of the search bar
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none, // Remove border line
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              ),
              style: TextStyle(color: Colors.white), // Text color
            ),
          ),
          // Body content for search page (replace with actual search results later)
          Expanded(
            child: Center(
              child: Text(
                'Search Results Will Appear Here',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF161616), // Set the background color
    );
  }
}
