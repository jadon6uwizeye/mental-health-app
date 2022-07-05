// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/emoticons.dart';
import '../utils/excercise_tile.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: ('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Profile'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 42, 38, 38),
        backgroundColor: Color.fromARGB(255, 237, 237, 239),
        onTap: (int index) {
          // ignore: avoid_print
          print('index: $index');
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                          child: const Icon(Icons.notifications,
                              color: Colors.white)),
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

                  const SizedBox(height: 25),

                  //Faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      //bad
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Emoticons(emoticonFace: '🙁'),
                          SizedBox(height: 7),
                          Text('Bad',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 212, 213, 215))),
                        ],
                      ),
                      //fine
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Emoticons(emoticonFace: '🙁'),
                          SizedBox(height: 7),
                          Text('fine',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 212, 213, 215))),
                        ],
                      ),
                      //well
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Emoticons(emoticonFace: '🙁'),
                          SizedBox(height: 7),
                          Text('well',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 212, 213, 215))),
                        ],
                      ),
                      //excellent
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Emoticons(emoticonFace: '🙁'),
                          SizedBox(height: 7),
                          Text('Excellent',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 212, 213, 215))),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),
                ],
              ),
            ),
            Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    child: Container(
                      color: Color.fromARGB(255, 237, 237, 239),
                      // ignore: prefer_const_literals_to_create_immutables
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 35, right: 35, top: 20, bottom: 12),
                        child: Column(
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Excercises",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  Icon(Icons.more_horiz, color: Colors.black),
                                ]),

                            SizedBox(height: 10),

                            Expanded(
                                child: ListView(
                              children: const [
                                ExcerciseTile(
                                  excerciseIcon:
                                      Icon(Icons.favorite, color: Colors.white),
                                  colorInUse: Colors.orange,
                                  excerciseName: 'Speaking Skills',
                                  excerciseNumber: '16 Excercises',
                                ),
                                ExcerciseTile(
                                  excerciseIcon:
                                      Icon(Icons.people, color: Colors.white),
                                  colorInUse: Color.fromARGB(255, 54, 97, 197),
                                  excerciseName: 'Reading Skills',
                                  excerciseNumber: '10 essays',
                                ),
                                ExcerciseTile(
                                  excerciseIcon: Icon(
                                      Icons.airline_seat_recline_extra,
                                      color: Colors.white),
                                  colorInUse: Colors.red,
                                  excerciseName: 'Workout',
                                  excerciseNumber: 'Speed: 5km/h',
                                ),
                                ExcerciseTile(
                                  excerciseIcon:
                                      Icon(Icons.star, color: Colors.white),
                                  colorInUse: Colors.pink,
                                  excerciseName: 'Push Ups',
                                  excerciseNumber: '10 sets of 10',
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
