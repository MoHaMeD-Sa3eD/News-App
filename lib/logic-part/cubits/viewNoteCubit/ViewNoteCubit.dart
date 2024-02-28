import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/logic-part/NotesModel.dart';
import 'package:notes_app/logic-part/cubits/viewNoteCubit/ViewNoteStates.dart';
import 'package:notes_app/ui-part/constants.dart';

class ViewNoteCubit extends Cubit<ViewNoteStates> {
  ViewNoteCubit() : super(ViewNotesInitialState());

  late List<NoteModel> noteModel;

  fetchNotes() {
    emit(ViewNotesLoadingState());
    var notesBox = Hive.box<NoteModel>(kNotesBoxName);
    try {
      noteModel = notesBox.values.toList();

      emit(ViewNotesSuccessfulState());
    } catch (e) {
      emit(ViewNotesFaliureState(
          errMessage:
              'there was an error in the addNote Method in ViewNoteCubit with errMessage: ${e.toString()}'));
    }
  }
}
