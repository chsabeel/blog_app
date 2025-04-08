import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final bool isobscured;
  const AuthField({
    super.key,
    this.hintText,
    required this.controller,
    this.isobscured = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(hintText: hintText),
      obscureText: isobscured,
      controller: controller,
      enabled: true,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
    );
  }
}
