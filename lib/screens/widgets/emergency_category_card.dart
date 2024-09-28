import 'package:flutter/material.dart';
import '../emergency_details.dart';

class EmergencyCategoryCard extends StatelessWidget {
  final String categoryTitle;
  final List<String> personImages;

  EmergencyCategoryCard({required this.categoryTitle, required this.personImages});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      // Width of the card
      height: 215,
      // Height of the card
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      // Spacing around the card
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B), // Light grey background color
        borderRadius: BorderRadius.circular(24), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  categoryRow(context, "Emergency Work", Icons.local_hospital, [
                    'assets/images/person1.jpg',
                    'assets/images/person2.jpg']),
                  categoryRow(context, "Emergency Response", Icons.fire_truck,
                      ['assets/images/person1.jpg']),
                  categoryRow(context, "Emergency Response Project", Icons.local_police, [
                    'assets/images/person1.jpg',
                    'assets/images/person3.jpg']),
                  categoryRow(context, "Emergency Response Coordination",
                      Icons.volunteer_activism, ['assets/images/person1.jpg']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryRow(BuildContext context, String categoryName, IconData iconData, List<String> images) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          iconData,
          color: Colors.white,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (categoryName == 'Emergency Response') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EmergencyDetailsPage()),
                );
              }
            },
            child: Text(
              categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                ),
              ),
            ),
          ),
        // Display the images in a horizontal row
        Stack(
          alignment: Alignment.centerRight, // Align to the right
          children: images.map((imagePath) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              // Spacing between avatars
              child: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 15, // Adjust the size as needed
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
