import 'package:flutter/material.dart';

import 'customCart.dart';
import 'customImage.dart';
import 'customNavigatinonBar.dart';

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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, top: 67),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 33,
                  backgroundImage: AssetImage('assets/images/avt.png'),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 25),
            height: 49,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.mic),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Looking For',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(91, 91, 91, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24.25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildImage(
                          title: 'Doctors',
                          imageUrl:
                              'https://th.bing.com/th/id/R.6b07d47d101474b22eef422916e9e64a?rik=Vp7QMJAnMdUmVA&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_212095.png&ehk=Sf3t8xRgDm6J5jFkCQaaQbW6nKWqiTc5gGAvuKNuSYg%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildImage(
                        assetPath: 'assets/images/avt.png',
                        title: 'Dentists',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildImage(
                        title: 'Hairdressers',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildImage(
                        title: 'Personal',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 26.35,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCardView(
                  imageUrl:
                      'https://th.bing.com/th/id/R.6b07d47d101474b22eef422916e9e64a?rik=Vp7QMJAnMdUmVA&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_212095.png&ehk=Sf3t8xRgDm6J5jFkCQaaQbW6nKWqiTc5gGAvuKNuSYg%3d&risl=&pid=ImgRaw&r=0',
                  name: 'John Doe',
                  profession: 'Doctor',
                  jobDetail:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  starRating: 3,
                  onPressed: () {
                    // Xử lý sự kiện khi button được nhấn
                  },
                ),
                buildCardView(
                  imageUrl:
                      'https://th.bing.com/th/id/R.6b07d47d101474b22eef422916e9e64a?rik=Vp7QMJAnMdUmVA&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_212095.png&ehk=Sf3t8xRgDm6J5jFkCQaaQbW6nKWqiTc5gGAvuKNuSYg%3d&risl=&pid=ImgRaw&r=0',
                  name: 'John Doe',
                  profession: 'Doctor',
                  jobDetail:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  starRating: 3,
                  onPressed: () {
                    // Xử lý sự kiện khi button được nhấn
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
