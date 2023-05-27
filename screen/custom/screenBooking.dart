import 'package:flutter/material.dart';

import 'customButtonInCart.dart';
import 'customButtonInMenu.dart';
import '../../lib/customNavigatinonBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedDay = 0;
  Color buttonColor = Colors.white;
  Color textColor = Colors.black;
  Color originalButtonColor = Colors.white;
  Color originalTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Appointment',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 106,
            margin: const EdgeInsets.only(left: 24, top: 50, right: 24),
            color: const Color.fromRGBO(214, 255, 250, 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) {
                    final now = DateTime.now().add(Duration(days: index));
                    final dayOfWeek = _getDayOfWeek(now.weekday);
                    final isSelected = selectedDay == index;
                    return Container(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                selectedDay = index;
                              },
                            );
                          },
                          child: Container(
                            width: 68,
                            height: 84,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color.fromRGBO(0, 0, 0, 1)
                                  : const Color.fromRGBO(214, 255, 250, 1),
                              border: Border.all(
                                  width: 0.0,
                                  color:
                                      const Color.fromRGBO(214, 255, 250, 1)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.only(
                                left: 7, top: 11, bottom: 11),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  now.day.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: isSelected
                                          ? const Color.fromRGBO(
                                              255, 255, 255, 1)
                                          : const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Text(
                                  dayOfWeek,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: isSelected
                                          ? const Color.fromRGBO(
                                              255, 255, 255, 1)
                                          : const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton2(
                width: 100,
                height: 40,
                text: 'Upcoming',
                textSize: 14,
                backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                textColor: Colors.black,
                onTap: () {
                  const snackDemo = SnackBar(
                    content: Text('test button'),
                    backgroundColor: Colors.green,
                    elevation: 1,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 50,
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackDemo);
                },
              ),
              CustomButton2(
                width: 100,
                height: 40,
                text: 'Completed',
                textSize: 14,
                backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                textColor: Colors.black,
                onTap: () {},
              ),
              CustomButton2(
                width: 100,
                height: 40,
                text: 'Cancelled',
                textSize: 14,
                backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                textColor: Colors.black,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 45),
          SizedBox(
            width: 382,
            height: 107,
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      '11:30AM',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  width: 282,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 99,
                        child: Icon(
                          Icons.image,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          size: 42.75,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            'Dr. Andrew',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Dentist',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              CustomButton(
                                width: 78,
                                height: 30,
                                text: 'View',
                                textSize: 14,
                                buttonColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                textColor: Colors.black,
                                onPressed: () {},
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              CustomButton(
                                width: 78,
                                height: 30,
                                text: 'Cancel',
                                textSize: 14,
                                buttonColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                textColor: Colors.black,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 382,
            height: 107,
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      '12:30AM',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  width: 282,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 99,
                        child: Icon(
                          Icons.image,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          size: 42.75,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            'Prof.Jessi',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Businness Guide',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              CustomButton(
                                width: 78,
                                height: 30,
                                text: 'View',
                                textSize: 14,
                                buttonColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                textColor: Colors.black,
                                onPressed: () {},
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              CustomButton(
                                width: 78,
                                height: 30,
                                text: 'Cancel',
                                textSize: 14,
                                buttonColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                textColor: Colors.black,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

String _getDayOfWeek(int weekday) {
  switch (weekday) {
    case DateTime.monday:
      return 'Mon';
    case DateTime.tuesday:
      return 'Tue';
    case DateTime.wednesday:
      return 'Wed';
    case DateTime.thursday:
      return 'Thu';
    case DateTime.friday:
      return 'Fri';
    case DateTime.saturday:
      return 'Sat';
    case DateTime.sunday:
      return 'Sun';
    default:
      return '';
  }
}
