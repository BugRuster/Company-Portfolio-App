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
        backgroundColor: Colors.black,
        title: Text('Welcome to', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image(image: AssetImage('Assets/CompanyLogo/Disha Creations-logos_transparent.png')),),
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
                backgroundColor: Colors.blue,
              ),
              child: Text("Let's Go", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
