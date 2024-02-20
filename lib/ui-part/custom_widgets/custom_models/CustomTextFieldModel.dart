class CustomTextFieldModel {
  final String hintText;
  final int maxLines;
   final void Function(String? newValue)? onSaved;



  CustomTextFieldModel({
    this.maxLines = 1,
    required this.hintText,
     this.onSaved,
  });
}
