import 'package:flutter/material.dart';
import 'package:notes_app/ui-part/custom_widgets/custom_models/CustomTextFieldModel.dart';
import 'CustomElevatedButton.dart';
import 'CustomTextField.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: Colors.black,
      backgroundColor: Colors.brown.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {
        customBottomSheet(context);
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }

  void customBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                customTextFieldModel: CustomTextFieldModel(

                  onSubmitted: (String data) {},
                  hintText: 'Title',
                ),
              ),
              CustomTextField(
                  customTextFieldModel: CustomTextFieldModel(
                    maxLines: 5,
                onSubmitted: (String data) {},
                hintText: 'Content',
              )),
              const Spacer(),
              CustomElevatedButton(
                onPressed: () {},
                buttonText: 'Add',
              ),
            ],
          ),
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
  }
}
