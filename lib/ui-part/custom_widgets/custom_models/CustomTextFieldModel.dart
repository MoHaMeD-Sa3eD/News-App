class CustomTextFieldModel {
  final String hintText;
  final int maxLines;
  final Function(String data) onSubmitted;

  CustomTextFieldModel({
    this.maxLines=1,
    required this.hintText,
    required this.onSubmitted,
  });
}
