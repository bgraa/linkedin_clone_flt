import 'package:flutter/material.dart';
import 'package:linkedin_clone_flt/pages/my_network/my_network_view.dart';
import 'package:linkedin_clone_flt/pages/post_page/post_view.dart';
import '../home_page/home_view.dart';
import '../notification_page/notification_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  List<Widget> pageList = <Widget>[
    const HomeView(),
    const MyNetworkView(),
    const PostView(),
    const NotificationView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
                    width: 0.3, color: Color.fromARGB(255, 197, 195, 195)))),
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
          selectedLabelStyle:
              const TextStyle(fontSize: kBottomNavigationBarHeight * 0.2),
          unselectedLabelStyle:
              const TextStyle(fontSize: kBottomNavigationBarHeight * 0.2),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: const Color.fromARGB(255, 197, 195, 195),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
