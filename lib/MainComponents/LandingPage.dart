import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disha Creations Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAFCBFF),
        title: Text(
          'Disha Creations',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Container(
        color: Color(0xFFAFCBFF),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
        child: Container(
          color: Color(0xFFAFCBFF), // Set the background color here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // About Us Section
              Container(
                child: Image(
                  image: AssetImage(
                      'Assets/CompanyLogo/Disha Creations-logos_white.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'About Us',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Disha Creations established in April 2006. Disha Creations is a premier Web Services Company for website and mobile app development on a global scale. Our business model focuses on having long-term strategic relationships with clients and related to improve clients business and revenue. Our team work after research and analysis. We work with agile methodology so you will get best result.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StrengthsPage()),
                    );
                  },
                  child: Text(
                    'Learn More...',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),),
    );
  }
}


class StrengthsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAFCBFF),
        title: Text(
          'Disha Creations',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFAFCBFF),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Our Strengths',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Display strengths using a ListView or Column

          // Services Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Our Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Display services using a ListView or Column

          // Contact Details Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Contact Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+91-94144 41157 / +91-9928647999'),
            onTap: () => launch('tel:+919414441157'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('info@dishacreations.com'),
            onTap: () => launch('mailto:info@dishacreations.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('www.dishacreations.com'),
            onTap: () => launch('https://www.dishacreations.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text(
                'B-34, Dhan Shree Tower-I, Central Spine, Vidhyadhar Nagar, Jaipur – 302039, India'),
          ),
        ],
      ),
      )
    );
  }
}
