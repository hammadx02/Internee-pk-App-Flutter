// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  final VoidCallback onTap;

  MyButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: ShapeDecoration(
          color: Colors.green,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
