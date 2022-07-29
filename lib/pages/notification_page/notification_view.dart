import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        centerIcon: Icon(
          Icons.search,
          color: Color.fromARGB(255, 197, 195, 195),
          size: kBottomNavigationBarHeight * 0.3,
        ),
        hintText: 'Search',
        secondActionIcon: Icons.chat_rounded,
      ),
      body: Text(
        'NotificationScreen',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
