import 'package:flutter/material.dart';
import 'package:notes_app/screens/HomeScreen.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
   home: HomeScreen(),
    );
  }
}
