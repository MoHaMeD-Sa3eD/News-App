class ViewNoteStates {}

class ViewNotesInitialState extends ViewNoteStates {}

class ViewNotesLoadingState extends ViewNoteStates {}

class ViewNotesSuccessfulState extends ViewNoteStates {}

class ViewNotesFaliureState extends ViewNoteStates {
  final String errMessage;

  ViewNotesFaliureState({required this.errMessage});
}
