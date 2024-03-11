import 'package:chat_gpt/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Image.asset(
                "assets/images/logo.png",
                height: 180,
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(bottom: 35),
              child: Text(
                'Welcome to ChatGPT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCarousel()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, // Background color
                  shadowColor: Colors.white, // Shadow color

                  backgroundColor: Colors.black,
                  elevation: 5, // Elevation (shadow)
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // No border radius
                    side: BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Try it out!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          width: 8), // Adjust the spacing between text and icon
                      Icon(Icons.arrow_right_alt), // Your icon goes here
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
