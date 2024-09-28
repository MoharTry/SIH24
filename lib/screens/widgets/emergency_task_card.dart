import 'package:flutter/material.dart';

class EmergencyTaskCard extends StatelessWidget {
  final String taskTitle;
  final String eta;

  EmergencyTaskCard({required this.taskTitle, required this.eta});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335, // Width of the card
      height: 160, // Height of the card
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Spacing around the card
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B), // Exact color tone for the background
        borderRadius: BorderRadius.circular(24), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height:8),
            Text(
              "ETA: $eta",
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
            // Additional content can be added here, e.g., search field or buttons
          ],
        ),
      ),
    );
  }
}
