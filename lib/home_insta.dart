import 'package:flutter/material.dart';
import 'package:insta_clone/insta_post.dart';
import 'package:insta_clone/insta_story.dart';

class HomeInsta extends StatefulWidget {
  const HomeInsta({Key? key}) : super(key: key);

  @override
  State<HomeInsta> createState() => _HomeInstaState();
}

class _HomeInstaState extends State<HomeInsta> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Explore',
      style: optionStyle,
    ),
    Text(
      'Index 2: Reels',
      style: optionStyle,
    ),
    Text(
      'Index 3: Shoop',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Instagram_logo.svg',
          width: 100,
          height: 50,
        ),
        actions: const [
          Icon(
            Icons.add_circle_outline,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.chat_bubble_outline,
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: ListView(
          prototypeItem: _widgetOptions.elementAt(_selectedIndex),
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      InstaStory(),
                    ],
                  ),
                ],
              ),
            ),
            // Column(
            //   children: [
            //     SizedBox(
            //       height: 100,
            //       child: ListView(
            //         scrollDirection: Axis.horizontal,
            //         children: const [
            //           InstaStory(),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           InstaStory(),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           InstaStory(),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           InstaStory(),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           InstaStory(),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           InstaStory(),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           InstaStory(),
            //         ],
            //       ),
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     const InstaPost(),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.queue_play_next_outlined,
              color: Colors.black,
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle_rounded,
              color: Colors.black,
            ),
            label: 'Profile',
            // backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
