// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final String hintText;
  final Icon icon;
  TextEditingController controller;
  // ignore: use_key_in_widget_constructors
  MyTextFiled({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          fillColor: const Color(0xffF7F8F9),
          filled: false,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return null;
          } else {
            return 'Enter Password';
          }
        },
      ),
    );
  }
}
