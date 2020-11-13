import 'package:eazy_shop/cart/cart.dart';
import 'package:eazy_shop/profile/profile_info.dart';
import 'package:flutter/material.dart';

import '../Folders.dart';
import 'home_view.dart';

List _widgetOptions = [HomeView(), Cart(), Folders(), ProfileInfo()];

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
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervisor_account_outlined),
          title: Text(''),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
