import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteCubit.dart';

import '../custom_models/CustomTextFieldModel.dart';
import 'CustomElevatedButton.dart';
import 'CustomTextField.dart';

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
                  formKey.currentState!.save();
                  NoteModel noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {

                  });
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
