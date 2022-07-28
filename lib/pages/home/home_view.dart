import 'package:flutter/material.dart';
import 'package:linkedin_clone_flt/components/custom_bottom_navigation_bar.dart';
import '../../components/custom_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar());
  }
}
