import 'package:flutter/material.dart';
import 'package:linkedin_clone_flt/pages/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkedIn',
      theme: ThemeData(canvasColor: Colors.grey[900]),
      home: const HomeView(),
    );
  }
}
