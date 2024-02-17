import 'package:flutter/material.dart';

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
        return Container();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
      ),
    );
  }
}
