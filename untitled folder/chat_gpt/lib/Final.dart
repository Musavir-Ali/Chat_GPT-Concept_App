import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 170,
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "ChatGPT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
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
