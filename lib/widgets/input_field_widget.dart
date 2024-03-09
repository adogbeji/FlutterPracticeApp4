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
        prefixIcon: iconData != null ? Icon(iconData): Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(assetReference!, width: 10),
        ),
        labelStyle: const TextStyle(
          fontSize: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.purpleAccent,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      obscureText: isObscure,
    );
  }
}
