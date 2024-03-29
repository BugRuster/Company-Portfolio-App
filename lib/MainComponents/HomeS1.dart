import 'package:flutter/material.dart';
import 'package:companyportfolio/MainComponents/LandingPage.dart';

void main() {
  runApp(HomeS1());
}

class HomeS1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeP1(),
    );
  }
}

class HomeP1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAFCBFF),
        title: Text(
          'Welcome to',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      body: Container(
        // Use Container to set background color
        color: Color(0xFFAFCBFF), // Set background color to black
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage(
                      'Assets/CompanyLogo/Disha Creations-logos_white.png'),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  backgroundColor: Color(0xFFAFCBFF),
                ),
                child: Text("Let's Go",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      //this app is developed by @BugRuster
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Path: lib/MainComponents/LandingPage.dart
