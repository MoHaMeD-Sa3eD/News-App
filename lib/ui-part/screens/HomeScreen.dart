import 'package:flutter/material.dart';
import 'package:notes_app/ui-part/custom_widgets/custom-widgets/HomeScreenBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenBody(),
    );
  }
}
