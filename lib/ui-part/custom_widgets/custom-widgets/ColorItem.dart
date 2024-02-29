import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
final Color color;
  const ColorItem({
    super.key,
    required this.isActive, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 32,
        child: isActive?const Icon(Icons.check,color: Colors.black,) :null ,
      ),
    );
  }
}
