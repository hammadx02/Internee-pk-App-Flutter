// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {
  final String hintText;
  final Icon icon;
  bool isPass;
  TextEditingController controller;
  final VoidCallback onPressed;

  // ignore: use_key_in_widget_constructors
  MyTextFiled({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.isPass = false,
    required this.onPressed,
  });

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPass,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: widget.icon,
            onPressed: widget.onPressed,
          ),
          hintText: widget.hintText,
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
          if (value == null || value.isEmpty) {
            return 'Enter Password';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
