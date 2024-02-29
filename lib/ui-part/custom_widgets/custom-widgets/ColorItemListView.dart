import 'package:flutter/material.dart';

import 'ColorItem.dart';

class ColorItemListView extends StatelessWidget {
  const ColorItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return const ColorItem();
          }),
    );
  }
}