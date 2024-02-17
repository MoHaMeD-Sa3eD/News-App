import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const CustomSearchIcon(),
        ),
      ],
    );
  }
}
