import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  final IconData icon;

  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: CustomSearchIcon(
            icon: icon,
          ),
        ),
      ],
    );
  }
}
