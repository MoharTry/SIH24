import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
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
          onPressed: () {
            // Define location button click behavior
          },
          icon: const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}