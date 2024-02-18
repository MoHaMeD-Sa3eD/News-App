import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {

  final IconData icon;
  const CustomSearchIcon({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: IconButton(
        onPressed: () {},
        icon:  Icon(icon, color: Colors.white),
      ),
    );
  }
}