import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final String hintText;
  final Icon icon;
  // ignore: use_key_in_widget_constructors
  MyTextFiled({
    Key? key,
    required this.hintText,
    required this.icon,
  });
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
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
    );
  }
}
