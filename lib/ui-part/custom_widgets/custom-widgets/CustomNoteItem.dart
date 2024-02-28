import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/ui-part/screens/EditNoteScreen.dart';

import '../../../logic-part/cubits/viewNoteCubit/ViewNoteCubit.dart';

class CustomNoteItem extends StatelessWidget {
  final NoteModel noteModel;

  const CustomNoteItem({
    super.key,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(EditNoteScreen.editNoteScreenId);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(fontSize: 32, color: Colors.black),
              ),
              subtitle: Text(
                noteModel.subTitle,
                style: TextStyle(
                    fontSize: 18, color: Colors.brown.withOpacity(0.8)),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<ViewNoteCubit>(context).fetchNotes();

                },
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 33.0),
              child: Text(
                noteModel.date,
                style: TextStyle(
                    fontSize: 16, color: Colors.brown.withOpacity(0.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
