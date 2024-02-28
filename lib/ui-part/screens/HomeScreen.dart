import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic-part/cubits/viewNoteCubit/ViewNoteCubit.dart';
import 'package:notes_app/ui-part/custom_widgets/custom-widgets/HomeScreenBody.dart';
import '../custom_widgets/custom-widgets/CustomFAB.dart';

class HomeScreen extends StatelessWidget {
  static String homeScreenId = 'HomeScreenId';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ViewNoteCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        floatingActionButton: CustomFAB(),
        body: HomeScreenBody(),
      ),
    );
  }
}
