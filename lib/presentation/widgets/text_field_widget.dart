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

  List<String> requiredFields = [
    'number plate',
    'vechicle type',
    'name',
    'mobile no',
    'total amount',
    'advance amount',
    'pass date',
    'heading',
    'amount',
  ];
  List<String> requiredNumberFields = [
    'mobile no',
    'total amount',
    'advance amount',
    'amount'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
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
        validator: (value) => _validator(value!),
      ),
    );
  }

  _validator(String? value) {
    if (requiredFields.contains(labelText.toLowerCase())) {
      if (value == null || value.isEmpty) {
        return '* Required';
      } else {
        if (requiredNumberFields.contains(labelText.toLowerCase())) {
          final number = int.tryParse(value);
          if (number == null) {
            return '* Numbers Only';
          }
          if ('mobile no' == labelText.toLowerCase()) {
            if (value.length != 10) {
              return '* 10 Numbers Required';
            }
          }
        }
        return null;
      }
    }
  }
}
