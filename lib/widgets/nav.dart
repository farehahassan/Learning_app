import 'package:flutter/material.dart';
import 'package:learning_app/account.dart';
import 'package:learning_app/color.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app/contact.dart';
import 'package:learning_app/home.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  List pages = [Home(), Contact(), Account()];
  int currentIndex = 0;

  void onTap(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTap,
          selectedItemColor: purple,
          unselectedItemColor: purple.withOpacity(0.5),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'contact', icon: Icon(Icons.contact_page)),
            BottomNavigationBarItem(label: 'account', icon: Icon(Icons.person)),
          ],
        ));
  }
}
