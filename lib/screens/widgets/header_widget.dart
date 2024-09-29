import 'package:flutter/material.dart';
import 'package:trafficmanagement/screens/live_map_page.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/static_map.jpg'),
          radius: 20,
        ),
        const SizedBox(width: 10),
        const Text(
            'Emergency Vehicle Location',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
            ),
        ),
        IconButton(
          icon: const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LiveMapPage()),
            );
          },
        ),
      ],
    );
  }
}