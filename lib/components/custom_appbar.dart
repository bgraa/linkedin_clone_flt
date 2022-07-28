import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(40.0);

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
          padding: EdgeInsets.only(left: 22.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(5)),
            child: const TextField(
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 197, 195, 195),
                    size: 20.0,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 197, 195, 195)),
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.chat_rounded,
                  color: Color.fromARGB(255, 197, 195, 195),
                  size: 25.0,
                )),
          )
        ]);
  }
}
