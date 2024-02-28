import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/logic-part/cubits/viewNoteCubit/ViewNoteCubit.dart';
import 'package:notes_app/logic-part/cubits/viewNoteCubit/ViewNoteStates.dart';

import 'CustomNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNoteCubit, ViewNoteStates>(
      builder: (BuildContext context, state) {
        List<NoteModel> notes = BlocProvider.of<ViewNoteCubit>(context).notes!;
        return ListView.builder(
          itemCount: notes.length,
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemBuilder: (context, index) {
            return CustomNoteItem(noteModel: notes[index],);
          },
        );
      },
    );
  }
}
