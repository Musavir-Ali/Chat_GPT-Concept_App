

import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_gpt/Create_account.dart';

import 'package:flutter/material.dart';


import 'package:iconsax/iconsax.dart';

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final List<Widget> screenList = [
    // Replace with your custom screens (Screen1(), Screen2(), Screen3())
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  int _current = 0; // Define the variable _current

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: screenList,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          enlargeCenterPage: false,
          autoPlay: false,
          enableInfiniteScroll: false,
          viewportFraction: 1.0,

          onPageChanged: (index, reason) => setState(
              () => _current = index), // Use the defined variable _current
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    child: Text(
                      'Welcome to \n ChatGPT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Ask Anything,get your answer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Icon(
                    Iconsax.sun_1,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Examples",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      tileColor: Color.fromARGB(255, 18, 17, 17),
                      title: const Center(
                        child: Text(
                          "Explain quantum computing in simple terms",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 300,
                child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      tileColor: Color.fromARGB(255, 18, 17, 17),
                      title: const Center(
                        child: Text(
                          "Got any creative ideas for a 10 year old's birthday?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 300,
                child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      tileColor: Color.fromARGB(255, 18, 17, 17),
                      title: const Center(
                        child: Text(
                          "How do i make an HTTP request in javascript?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Screen2()),
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 70,
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: SizedBox(
                  child: Text(
                    'Welcome to \n ChatGPT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Ask Anything,get your answer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Iconsax.flash_11,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Capabilites",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    tileColor: Color.fromARGB(255, 18, 17, 17),
                    title: const Center(
                      child: Text(
                        "Remembers what user said earlier in the conversation",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    tileColor: Color.fromARGB(255, 18, 17, 17),
                    title: const Center(
                      child: Text(
                        "Allows user to provide follow-up corrections",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    tileColor: Color.fromARGB(255, 18, 17, 17),
                    title: const Center(
                      child: Text(
                        "Trained to decline inappropriate requests",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen3()),
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 70,
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: SizedBox(
                  child: Text(
                    'Welcome to \n ChatGPT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Ask Anything,get your answer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Iconsax.warning_2,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Limitations",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    tileColor: Color.fromARGB(255, 18, 17, 17),
                    title: const Center(
                      child: Text(
                        "May occasionally generate incorrect information",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    tileColor: Color.fromARGB(255, 18, 17, 17),
                    title: const Center(
                      child: Text(
                        "May occasionally produce harmful instructions or biased content",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    tileColor: const Color.fromARGB(255, 18, 17, 17),
                    title: const Center(
                      child: Text(
                        "Limited knowledge of world and events after 2021",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Create_Account()),
                      );
                    },
                    child: const Text(
                      "Lets Go!",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
