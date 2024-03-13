import 'package:chat_gpt/Verify.dart';

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';


class CountryCodeSelector extends StatefulWidget {
  @override
  _CountryCodeSelectorState createState() => _CountryCodeSelectorState();
}

class _CountryCodeSelectorState extends State<CountryCodeSelector> {
  String selectedCountryCode = '+1'; // Default country code

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
                  "Verify your phone number",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CountryCodePicker(
                        onChanged: (CountryCode countryCode) {
                          setState(() {
                            selectedCountryCode = countryCode.toString();
                          });
                        },
                        initialSelection: 'US', // Initial country code
                        favorite: const [
                          'US',
                          'IN',
                          'GB',
                          'PK'
                        ], // Optional: Set favorite countries
                        showCountryOnly:
                            true, // Optional: Show only country code
                        showOnlyCountryWhenClosed:
                            false, // Optional: Show only country code when closed
                        alignLeft:
                            false, // Optional: Align flag and text to the left
                        textStyle: const TextStyle(
                          color: Colors.white, // Set country code text color
                        ),
                        flagWidth: 20.0, // Set flag size
                      ),
                      const SizedBox(
                          width:
                              2), // Add spacing between country code and text field
                      const Expanded(
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white), // Set text field color
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            hintText: 'Enter your number',
                            labelStyle: TextStyle(
                                color: Colors.white), // Set label color
                            hintStyle: TextStyle(
                                color: Colors.white), // Set hint color
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "We will send you a one time SMS message",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Verify()),
                    );
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white, width: 1),
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
