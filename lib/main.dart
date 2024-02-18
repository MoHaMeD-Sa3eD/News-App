import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/ui-part/constants.dart';
import 'package:notes_app/ui-part/screens/HomeScreen.dart';


void main()async {

  await Hive.initFlutter();

 await  Hive.openBox(kNotesBoxName);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      title: 'Notes-App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
    );
  }
}
