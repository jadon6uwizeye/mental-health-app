import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final excerciseIcon;
  final String excerciseName;
  final String excerciseNumber;
  // ignore: prefer_typing_uninitialized_variables
  final colorInUse;

  const ExcerciseTile(
      {Key? key,
      required this.excerciseName,
      required this.excerciseNumber,
      required this.excerciseIcon,
      required this.colorInUse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 5),
      child: Container(
        padding: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          leading: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorInUse,
                borderRadius: BorderRadius.circular(10),
              ),
              child: excerciseIcon),
          title: Text(excerciseName,
              style: const TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black)),
          subtitle: Text(excerciseNumber,
              style: const TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 46, 47, 48))),
          trailing: const Icon(Icons.more_horiz, color: Colors.black),
        ),
      ),
    );
  }
}
