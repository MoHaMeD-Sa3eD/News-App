import 'package:flutter/material.dart';

import 'CustomNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        return const CustomNoteItem();
      },
    );
  }
}