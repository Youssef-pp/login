import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 252, 253, 253),
            body: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: CircleAvatar(
                      radius: 122,
                      backgroundColor: Color.fromARGB(255, 8, 0, 0),
                      child: CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage("images/Reading.png"),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Welcome To The App",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10,
                    ),
                    child: Center(
                      child: Text(
                        "We're excited to help you book and manage your service appointments with ease.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 183, 183)),
                      ),
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                    height: 20,
                    color: Color.fromARGB(255, 8, 0, 0),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    decorator: const DotsDecorator(
                      activeColor: Color.fromARGB(255, 2, 21, 126),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Create an acount",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            )));
  }
}
