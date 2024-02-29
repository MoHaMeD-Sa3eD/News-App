import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteCubit.dart';

import 'ColorItem.dart';

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({
    super.key,
  });

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int currentIndex = 0;
  final List<Color> colors = const [
    Color(0xffA7A5C6),
    Color(0xff8797B2),
    Color(0xff6D8A96),
    Color(0xff657D8B),
    Color(0xff617785),
    Color(0xff5D707F),
    Color(0xff629FAB),
    Color(0xff66CED6),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                });
              },
              child: ColorItem(
                isActive: currentIndex == index ? true : false,
                color: colors[index],
              ),
            );
          }),
    );
  }
}
