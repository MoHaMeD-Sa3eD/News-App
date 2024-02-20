import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/ui-part/constants.dart';

import 'AddNoteStates.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(NoNoteYetState());

  addNote(NoteModel note) async {
    emit(LoadingAddNote());
    try {
      Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBoxName);
      var addedData = await notesBox.add(note);
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
