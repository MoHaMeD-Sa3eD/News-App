import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NotesListView.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
