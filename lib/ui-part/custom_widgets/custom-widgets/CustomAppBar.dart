import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  final IconData icon;
  final Function()? onPressed;

  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
            ),
          ),
        ),
      ],
    );
  }
}
