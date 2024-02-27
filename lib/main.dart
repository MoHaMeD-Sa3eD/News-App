import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/logic-part/cubits/addNoteCubit/AddNoteCubit.dart';
import 'package:notes_app/logic-part/cubits/sipmle_bloc_observer.dart';
import 'package:notes_app/ui-part/constants.dart';
import 'package:notes_app/ui-part/screens/EditNoteScreen.dart';
import 'package:notes_app/ui-part/screens/HomeScreen.dart';

import 'logic-part/NotesModel.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox<NoteModel>(kNotesBoxName);
  Hive.registerAdapter<NoteModel>(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddNoteCubit>(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          EditNoteScreen.editNoteScreenId: (context) => const EditNoteScreen(),
          HomeScreen.homeScreenId: (context) => const HomeScreen(),
        },
        initialRoute: HomeScreen.homeScreenId,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        title: 'Notes-App',
        theme: ThemeData(
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            },
          ),
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
