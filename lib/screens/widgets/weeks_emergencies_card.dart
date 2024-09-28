import 'package:flutter/material.dart';

class WeeksEmergencyTaskCard extends StatelessWidget {
  final String taskTitle;
  final String eta;
  final String subtitle;

  WeeksEmergencyTaskCard({required this.taskTitle, required this.eta, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335, // Width of the card
      height: 115, // Height of the card
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Spacing around the card
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B), // Light grey background color
        borderRadius: BorderRadius.circular(24), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4), // Space between title and subtitle
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "ETA: $eta",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 10,
              ),
            ),
            // Additional content can be added here, e.g., search field or buttons
          ],
        ),
      ),
    );
  }
}
