import 'package:flutter/material.dart';
import 'package:trafficmanagement/screens/widgets/weeks_emergencies_card.dart';
import 'widgets/header_widget.dart';
import 'widgets/emergency_task_card.dart';
import 'widgets/emergency_category_card.dart';
import 'widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161616), // Set background color to black
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: HeaderWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row for "Today's Emergency Tasks" and "VIEW ALL"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Today's Emergency Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle "VIEW ALL" click
                    },
                    child: const Text(
                      "VIEW ALL",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            EmergencyTaskCard(taskTitle: 'Set Destination', eta: 'Tomorrow, 9:00 AM'),
        //Row for "This Week's Emergencies" and "VIEW CALENDAR"
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "This Week's Emergencies",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "VIEW CALENDAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            WeeksEmergencyTaskCard(
                taskTitle: 'Emergency Route Planning',
                subtitle: 'Plan optimized routes for emergencies',
                eta: 'Tomorrow, 9:00 AM'),
            WeeksEmergencyTaskCard(
                taskTitle: 'Respond to Emergency Calls',
                subtitle: 'Immediate response to all emergency calls',
                eta: 'Tomorrow, 9:00 AM'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Emergency Categories",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            EmergencyCategoryCard(categoryTitle: 'Emergency Work', personImages: const [
              'assets/images/person1.png',
              'assets/images/person2.png'
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
    );
  }
}