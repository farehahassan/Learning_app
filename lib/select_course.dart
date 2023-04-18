import 'package:flutter/material.dart';
import 'package:learning_app/color.dart';

class SelectCourse extends StatefulWidget {
  const SelectCourse({Key? key}) : super(key: key);

  @override
  _SelectCourseState createState() => _SelectCourseState();
}

class _SelectCourseState extends State<SelectCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 5, left: 25, right: 25, bottom: 25),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Learning App",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: purple,
                    letterSpacing: 1),
              ),
              Image(image: AssetImage('assets/images/Learningapp2.jpg')),
              SizedBox(
                height: 20,
              ),
              Text(
                "Select your course level",
                style: TextStyle(
                    color: purple,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              )
            ]),
      ),
    );
  }
}
