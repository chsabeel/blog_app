import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final bool isobscured;
  const CustomField({
    super.key,
    this.hintText,
    required this.controller,
    this.isobscured = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      obscureText: isobscured,
      controller: controller,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
    );
  }
}
