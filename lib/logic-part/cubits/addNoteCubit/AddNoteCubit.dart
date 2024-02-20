import 'package:flutter_bloc/flutter_bloc.dart';

import 'AddNoteStates.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(NoNoteYetState());
}
