import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteCubit.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteStates.dart';
import 'AddNoteForm.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: Colors.black,
      backgroundColor: Colors.brown.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {
        customBottomSheet(context);
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }

  void customBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => AddNoteCubit(),
          child: BlocConsumer<AddNoteCubit, AddNoteStates>(
            listener: (BuildContext context, AddNoteStates state) {
              if (state is AddNoteFaliure) {
                debugPrint(
                    'errorMessage from listener in BlocConsumer : ${state.errMessage}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (BuildContext context, AddNoteStates state) {
              return ModalProgressHUD(
                  inAsyncCall: state is LoadingAddNote ? true : false,
                  child: const AddNoteForm());
            },
          ),
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
  }
}
