import 'package:flutter/material.dart';
import 'package:learning_app/color.dart';
import 'package:learning_app/widgets/nav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 5, left: 25, right: 25, bottom: 25),
        child: Column(children: [
          const Text(
            "Welcome Back John Deo",
            style: TextStyle(
                color: purple, fontSize: 47, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, right: 25, left: 25)),
                  child: const Text(
                    "Book Class",
                    style: TextStyle(fontSize: 17),
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, right: 25, left: 25)),
                  child: const Text(
                    "My Courses",
                    style: TextStyle(fontSize: 17),
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Last Classes            ",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 35, color: purple, fontWeight: FontWeight.w400),
          ),
        ]),
      ),
      bottomNavigationBar: const Nav(),
    );
  }
}
