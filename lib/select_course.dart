import 'package:flutter/material.dart';
import 'package:learning_app/color.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:learning_app/home.dart';
// import 'package:learning_app/widgets/nav.dart';

class SelectCourse extends StatefulWidget {
  const SelectCourse({Key? key}) : super(key: key);

  @override
  _SelectCourseState createState() => _SelectCourseState();
}

class _SelectCourseState extends State<SelectCourse> {
  bool ischecked = false;
  int tag = 1;
  List<String> tags = [];
  List<String> options = ['Beginners', 'Intermediate', 'Expert'];
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
            children: [
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
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ChipsChoice.single(
                    value: tag,
                    onChanged: (val) => setState(() => tag = val),
                    choiceItems: C2Choice.listFrom(
                        source: options,
                        value: (i, v) => i,
                        label: (i, v) => v),
                    choiceActiveStyle: const C2ChoiceStyle(
                        color: Colors.white,
                        backgroundColor: purple,
                        borderColor: purple,
                        borderRadius: BorderRadius.all(Radius.circular(21))),
                    choiceStyle: const C2ChoiceStyle(
                      color: purple,
                      borderColor: purple,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Checkbox(
                      value: ischecked,
                      onChanged: (bool? newvalue) {
                        if (ischecked == true) {
                          ischecked = false;
                        } else {
                          ischecked = true;
                        }
                        setState(() {});
                      }),
                  const Text(
                    "Are you sure?",
                    style: TextStyle(
                        color: purple,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Home())));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 90, right: 90),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 0),
                  )),
            ]),
      ),
    );
  }
}
