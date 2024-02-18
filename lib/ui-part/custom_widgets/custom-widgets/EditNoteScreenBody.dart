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
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
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
