import 'package:flutter/material.dart';
import '../custom_widgets/custom-widgets/EditNoteScreenBody.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteScreenBody(),
    );
  }
}
