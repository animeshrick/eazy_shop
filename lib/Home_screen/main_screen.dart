import 'package:eazy_shop/cart/cart.dart';
import 'package:eazy_shop/profile/profile_info.dart';
import 'package:flutter/material.dart';

import '../Folders.dart';
import 'home_view.dart';

List _widgetOptions = [HomeView(), ProfileInfo(), Cart(), Folders()];

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getBottomNavBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  Widget getBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[900],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.offline_bolt),
          title: Text('Shorts'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.graphic_eq),
          title: Text('Activity'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cloud_upload),
          title: Text('Upload'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email),
          title: Text('Messages'),
        ),
        BottomNavigationBarItem(
//                activeIcon: IconButton(
//                  onPressed: null,
//                  icon: Icon(Icons.hourglass_full),
//                ),
          icon: Icon(Icons.menu),
          title: Text('More'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}
