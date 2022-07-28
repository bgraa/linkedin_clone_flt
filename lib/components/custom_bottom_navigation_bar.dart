import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
                  width: 0.2, color: Color.fromARGB(255, 197, 195, 195)))),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            activeIcon: Icon(Icons.people_alt_rounded),
            label: 'My Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            activeIcon: Icon(Icons.notifications_active),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_rounded),
            activeIcon: Icon(Icons.work),
            label: 'Jobs',
          ),
        ],
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: const Color.fromARGB(255, 197, 195, 195),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
