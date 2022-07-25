import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  String emoji;
  Emoji({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blue[600]),
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}
