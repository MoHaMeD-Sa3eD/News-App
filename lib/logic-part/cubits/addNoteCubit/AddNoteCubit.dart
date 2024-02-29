import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/ui-part/constants.dart';

import 'AddNoteStates.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(NoNoteYetState());
  Color? color = const Color(0xffA7A5C6);

  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(LoadingAddNote());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBoxName);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFaliure(
            errMessage:
                'there was an error in the addNote Method in AddNoteCubit with errMessage: ${e.toString()}'),
      );
    }
  }
}
