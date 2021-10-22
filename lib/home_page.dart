import 'package:fenmo/Screens/buffer_page.dart';
import 'package:fenmo/Screens/search_screen.dart';
import 'package:fenmo/Screens/home_page_body.dart';
import 'package:flutter/material.dart';
import 'Screens/explore_screen.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key }) : super(key: key);
  static String id = 'home_page';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List pages = [
    HomePageBody(),
    SearchScreen(),
    BufferPage(),
    BufferPage(),
    BufferPage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      appBar: buildAppBar(),
      body: pages[_currentIndex],
    );
  }



  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade800,
      leading: GestureDetector(
        onTap: () {},
        child: Icon(Icons.menu),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.chat),
          ),
        ),
      ],
      title: Text('hello Hritik!'),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: true,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'home',
          backgroundColor: Colors.blue),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'search',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'explore',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_rounded),
          label: 'create',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'profile',
          backgroundColor: Colors.blue,
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          // Navigator.pushNamed(context, pages[_currentIndex]);
        });
      },
    );
  }
}
