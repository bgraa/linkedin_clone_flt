import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Icon centerIcon;
  final String hintText;
  final IconData? firstActionIcon;
  final IconData secondActionIcon;

  const CustomAppBar(
      {Key? key,
      required this.centerIcon,
      required this.hintText,
      this.firstActionIcon,
      required this.secondActionIcon})
      : super(key: key);

  @override
  Size get preferredSize =>
      const Size.fromHeight(kBottomNavigationBarHeight * 0.6);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
            preferredSize: preferredSize,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Container(
                color: const Color.fromARGB(255, 197, 195, 195),
                height: 0.3,
              ),
            )),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: kBottomNavigationBarHeight * 0.2,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        title: Padding(
          padding:
              const EdgeInsets.only(left: kBottomNavigationBarHeight * 0.02),
          child: Container(
            width: double.infinity,
            height: kBottomNavigationBarHeight * 0.6,
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  prefixIcon: centerIcon,
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 197, 195, 195)),
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 5.0, bottom: 20),
            child: Row(children: [
              if (firstActionIcon != null)
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    icon: Icon(
                      firstActionIcon,
                      color: const Color.fromARGB(255, 197, 195, 195),
                      size: kBottomNavigationBarHeight * 0.4,
                    )),
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(
                    secondActionIcon,
                    color: const Color.fromARGB(255, 197, 195, 195),
                    size: kBottomNavigationBarHeight * 0.4,
                  )),
            ]),
          )
        ]);
  }
}
