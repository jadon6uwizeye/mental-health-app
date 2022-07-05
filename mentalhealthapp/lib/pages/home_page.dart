// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 62, 149),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  //hi Jadon
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Hi Jadon!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '23, Jan , 2022',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 212, 213, 215),
                        ),
                      ),
                    ],
                  ),

                  //Notification
                  Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 54, 97, 197),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(10),
                      child:
                          const Icon(Icons.notifications, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 25),

              //search row
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 89, 161),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 10),
                      Text('Search',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                    ]),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'how do you feel today?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
