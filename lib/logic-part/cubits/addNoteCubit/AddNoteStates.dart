class AddNoteStates {}

class NoNoteYetState extends AddNoteStates {}

class AddNoteSuccess extends AddNoteStates {}

class AddNoteFaliure extends AddNoteStates {
  final String errMessage;

  AddNoteFaliure({required this.errMessage});
}

class LoadingAddNote extends AddNoteStates {}
