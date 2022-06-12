import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  String hintText;
  String labelText;
  IconData? icon;
  bool readOnly;
  VoidCallback? onTap;
  TextEditingController controller;
  TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.icon,
    this.readOnly = false,
    this.onTap,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        decoration: InputDecoration(
            icon: Icon(icon),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            hintText: hintText,
            labelText: labelText),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        onEditingComplete: () {},
      ),
    );
  }

  String? validName(String? value) {
    if (value!.isEmpty) return 'Name is Required';
    final RegExp nameExp = RegExp(r'^[a-zA-Z] \s+$');
    if (!nameExp.hasMatch(value)) return 'Please enter Alphabet Only';
    return null;
  }
}
