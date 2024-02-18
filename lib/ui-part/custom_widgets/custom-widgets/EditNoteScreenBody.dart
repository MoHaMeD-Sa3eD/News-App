import 'package:flutter/material.dart';

import '../custom_models/CustomTextFieldModel.dart';
import 'CustomAppBar.dart';
import 'CustomTextField.dart';

class EditNoteScreenBody extends StatelessWidget {
  const EditNoteScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 40),
      child: Column(
        children: [
          const CustomAppBar(
            title: 'Edit Note',
          ),
          CustomTextField(
            customTextFieldModel: CustomTextFieldModel(
              hintText: 'Title',
              onSubmitted: (data) {},
            ),
          ),
          CustomTextField(
            customTextFieldModel: CustomTextFieldModel(
              maxLines: 5,
              hintText: 'Content',
              onSubmitted: (data) {},
            ),
          ),
        ],
      ),
    );
  }
}
