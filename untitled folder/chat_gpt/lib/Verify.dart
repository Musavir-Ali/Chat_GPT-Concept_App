import 'package:chat_gpt/Final.dart';

import 'package:flutter/material.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 70,
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Enter Code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Please enter the code we just sent you.",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Code",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Resend Code",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Landing()),
                      );
                    },
                    child: Text(
                      "Verify",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
