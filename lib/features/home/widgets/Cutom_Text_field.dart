// ignore_for_file: file_names

import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField(
      {super.key, this.maxLine = 1, required this.hint, this.onsaved});
  final int maxLine;
  final String hint;
  final Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "requird the value";
        } else {
          return null;
        }
      },
      onSaved: onsaved,
      maxLines: maxLine,
      decoration: InputDecoration(
          border: buildBorder(),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white));
  }
}
