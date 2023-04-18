import 'package:flutter/material.dart';
import 'package:learning_app/log_in.dart';
import 'package:learning_app/color.dart';

class StartLearning extends StatefulWidget {
  const StartLearning({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StartLearningState createState() => _StartLearningState();
}

class _StartLearningState extends State<StartLearning> {
  // Color _purple = Color.fromARGB(255, 198, 15, 230);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.1,
          left: 16,
          right: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/startlearning1.jpeg')),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Online learning platform",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
                color: Color.fromARGB(255, 198, 15, 230),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "loremt is a long established fact that a reader will be distracted by the readable content of a page when looking at ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LogIn())));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 70, right: 70),
                ),
                child: const Text(
                  "Start Learning",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, letterSpacing: 2),
                ))
          ],
        ),
      ),
    );
  }
}
