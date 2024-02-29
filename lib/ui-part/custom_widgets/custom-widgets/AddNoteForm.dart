import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteCubit.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteStates.dart';
import '../custom_models/CustomTextFieldModel.dart';
import 'ColorItemListView.dart';
import 'CustomElevatedButton.dart';
import 'CustomTextField.dart';
import 'package:intl/intl.dart';

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
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: 16.0,
              left: 16.0,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.8,
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
                ColorItemListView(),
                const SizedBox(
                  height: 40,
                ),
                BlocBuilder<AddNoteCubit, AddNoteStates>(
                  builder: (context, state) {
                    return CustomElevatedButton(
                      buttonText: 'Add',
                      isLoading: state is LoadingAddNote ? true : false,
                      onPressed: () {
                        addNoteMethod(context);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addNoteMethod(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate =
        DateFormat('yyyy-MM-dd   HH:mm:ss').format(currentDate);

    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      NoteModel noteModel = NoteModel(
          title: title!,
          subTitle: subTitle!,
          date: formattedDate,
          color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
    } else {
      autoValidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}





