import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 180.0, right: 25, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(hintText: "Email "),
              ),
              const TextField(
                decoration: InputDecoration(hintText: "Password "),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Checkbox(
                        shape: const CircleBorder(
                            side: BorderSide(color: Colors.black)),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    "Forget Password?",
                    style: TextStyle(color: Color(0xFFc01c1c), fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Sign  In",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
