import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State {
  int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      opacity: 0.2,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
      currentIndex: currentIndex,
      hasInk: true,
      inkColor: Colors.black12,
      hasNotch: true,
      fabLocation: BubbleBottomBarFabLocation.end,
      onTap: changePage,
      items: [
        BubbleBottomBarItem(
          backgroundColor: Colors.red,
          icon: Icon(
            Icons.dashboard,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.dashboard,
            color: Colors.red,
          ),
          title: Text('Home'),
        ),
        BubbleBottomBarItem(
          backgroundColor: Colors.indigo,
          icon: Icon(
            Icons.folder_open,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.folder_open,
            color: Colors.indigo,
          ),
          title: Text('Folders'),
        ),
        BubbleBottomBarItem(
          backgroundColor: Colors.deepPurple,
          icon: Icon(
            Icons.access_time,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.access_time,
            color: Colors.deepPurple,
          ),
          title: Text('Log'),
        ),
        BubbleBottomBarItem(
          backgroundColor: Colors.indigo,
          icon: Icon(
            Icons.folder_open,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.folder_open,
            color: Colors.indigo,
          ),
          title: Text('Folders'),
        ),
      ],
    );
  }
}
