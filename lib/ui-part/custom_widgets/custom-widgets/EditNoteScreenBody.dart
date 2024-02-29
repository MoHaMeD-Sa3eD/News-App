import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/cubits/viewNoteCubit/ViewNoteCubit.dart';
import 'package:notes_app/ui-part/custom_widgets/custom-widgets/ColorItemListView.dart';
import 'package:notes_app/ui-part/screens/HomeScreen.dart';

import '../../../logic-part/NotesModel.dart';
import '../custom_models/CustomTextFieldModel.dart';
import 'CustomAppBar.dart';
import 'CustomTextField.dart';

class EditNoteScreenBody extends StatefulWidget {
  const EditNoteScreenBody({
    super.key,
  });

  @override
  State<EditNoteScreenBody> createState() => _EditNoteScreenBodyState();
}

class _EditNoteScreenBodyState extends State<EditNoteScreenBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    NoteModel noteModel =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              noteModel.title = title ?? noteModel.title;
              noteModel.subTitle = subTitle ?? noteModel.subTitle;
              noteModel.save();
              BlocProvider.of<ViewNoteCubit>(context).fetchNotes();
              Navigator.pushNamed(context, HomeScreen.homeScreenId);
            },
          ),
          CustomTextField(
            customTextFieldModel: CustomTextFieldModel(
              hintText: noteModel.title,
              onChanged: (data) {
                setState(() {
                  title = data;
                });
              },
            ),
          ),
          CustomTextField(
            customTextFieldModel: CustomTextFieldModel(
              maxLines: 5,
              hintText: noteModel.subTitle,
              onChanged: (data) {
                setState(() {
                  subTitle = data;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(height: 64, child: ColorItemListView()),
        ],
      ),
    );
  }
}
