import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {

  final String title;
  const CustomAppBar({super.key,required this.title});

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
          icon: const CustomSearchIcon(),
        ),
      ],
    );
  }
}
