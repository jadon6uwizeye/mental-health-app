import 'package:flutter/material.dart';

class Emoticons extends StatelessWidget {
  final String emoticonFace;

  const Emoticons({Key? key, required this.emoticonFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 40, 83, 192)),
        child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(emoticonFace,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
            ]));
  }
}
