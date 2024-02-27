import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/ui-part/screens/EditNoteScreen.dart';

class CustomNoteItem extends StatelessWidget {


  const CustomNoteItem({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(EditNoteScreen.editNoteScreenId);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter tips',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
              subtitle: Text(
                "Build Your Career with\tMohamed Saeed",
                style: TextStyle(
                    fontSize: 18, color: Colors.brown.withOpacity(0.8)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 33.0),
              child: Text(
                '\nMay21 , 2022',
                style: TextStyle(
                    fontSize: 16, color: Colors.brown.withOpacity(0.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
