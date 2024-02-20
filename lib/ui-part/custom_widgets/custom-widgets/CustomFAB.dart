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
        return const AddNoteForm();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              customTextFieldModel: CustomTextFieldModel(
                onSaved: (data) {
                  title = data;
                },
                hintText: 'Title',
              ),
            ),
            CustomTextField(
                customTextFieldModel: CustomTextFieldModel(
              onSaved: (data) {
                subTitle = data;
              },
              maxLines: 5,
              hintText: 'Content',
            )),
            const Spacer(),
            CustomElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {

                }
              },
              buttonText: 'Add',
            ),
          ],
        ),
      ),
    );
  }
}
