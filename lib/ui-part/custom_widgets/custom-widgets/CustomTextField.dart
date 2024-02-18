import 'package:flutter/material.dart';
import 'package:notes_app/ui-part/custom_widgets/custom_models/CustomTextFieldModel.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  final CustomTextFieldModel customTextFieldModel;

  const CustomTextField({super.key, required this.customTextFieldModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
     cursorColor: kPrimaryCyanColor,
        maxLines: 2,
        onSubmitted: customTextFieldModel.onSubmitted,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 16, vertical: customTextFieldModel.verticalPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: kPrimaryCyanColor,
            ),
          ),
          hintText: customTextFieldModel.hintText,
          hintStyle: const TextStyle(color: kPrimaryCyanColor),
        ),
      ),
    );
  }
}
