import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2B2B2B), // Set the background color of the navbar
      child: BottomNavigationBar(
        backgroundColor: const Color(0xFF2B2B2B), // Make background transparent
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.white),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.white),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake, color: Colors.white),
            label: 'Handshake',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white),
            label: 'Settings',
          ),
        ],
        currentIndex: 0, // Set the currently selected index
        selectedItemColor: Colors.white, // Color of the selected item
        unselectedItemColor: Colors.white70, // Color of unselected items
        showUnselectedLabels: true, // Show labels for unselected items
        onTap: (index) {
          // Handle tap events here
        },
      ),
    );
  }
}
