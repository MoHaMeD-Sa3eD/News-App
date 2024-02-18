class CustomTextFieldModel {
  final double verticalPadding;

  final String hintText;

  final Function(String data) onSubmitted;

  CustomTextFieldModel(
      {required this.verticalPadding,
      required this.hintText,
      required this.onSubmitted});
}
