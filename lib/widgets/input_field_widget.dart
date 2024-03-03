import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final IconData? iconData;
  final String? assetReference;
  final String labelString;
  final bool isObscure;

  const InputFieldWidget(
      {required this.textEditingController,
      this.iconData,
      this.assetReference,
      required this.labelString,
      required this.isObscure,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: labelString,
        prefixIcon: iconData != null ? Icon(iconData): Image.asset(assetReference!)
      ),
      obscureText: isObscure,
    );
  }
}
