import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF161616), // Set the background color of the navbar
      child: BottomNavigationBar(
        backgroundColor: const Color(0xFF161616), // Make background transparent
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
        currentIndex: currentIndex, // Set the currently selected index
        selectedItemColor: Colors.white, // Color of the selected item
        unselectedItemColor: Colors.white70, // Color of unselected items
        showUnselectedLabels: true, // Show labels for unselected items
        onTap: (index) {
          // Handle tap events here
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/messages');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/calendar');
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/handshake');
              break;
            case 4:
              Navigator.pushReplacementNamed(context, '/settings');
              break;
          }
        },
      ),
    );
  }
}
