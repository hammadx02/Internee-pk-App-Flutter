import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String numText, taskText;
  const Task({
    Key? key,
    required this.numText,
    required this.taskText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(numText),
            ],
          ),
          const Spacer(),
          Expanded(
            child: Text(taskText),
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 30,
            decoration: ShapeDecoration(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Center(
              child: Text(
                'View',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
