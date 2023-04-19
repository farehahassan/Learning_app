import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app/select_course.dart';

import 'color.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool ischecked = false;
  Color _purple = const Color.fromARGB(255, 198, 15, 230);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LOG IN",
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: const EdgeInsets.only(top: 5, left: 39, right: 39, bottom: 39),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Learning App",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: purple,
                    letterSpacing: 1),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Enter your login details to access your account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: purple,
                    letterSpacing: 1.3),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    icon: const FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    label: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 26, 33, 168)),
                  ),
                  ElevatedButton.icon(
                    icon: const FaIcon(
                      FontAwesomeIcons.googlePlusG,
                      color: Colors.white,
                    ),
                    label: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "   Google   ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 227, 9, 27)),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.email_outlined),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: purple))),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.password_outlined),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: purple))),
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
                  const Text("Remember me"),
                  const SizedBox(
                    width: 46,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget password?",
                        style: TextStyle(color: Colors.red),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SelectCourse())));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 70, right: 70),
                  ),
                  child: const Text(
                    "Log In with your account",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 0),
                  )),
              const SizedBox(
                height: 75,
              ),
              RichText(
                  text: const TextSpan(
                      style:
                          TextStyle(color: purple, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(text: "Don't have any account?"),
                    TextSpan(
                        text: "Create account",
                        style: TextStyle(color: Colors.blue))
                  ]))
            ]),
      ),
    );
  }
}
