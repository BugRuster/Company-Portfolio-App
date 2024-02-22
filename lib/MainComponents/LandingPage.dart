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
        title: Text('Disha Creations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Us Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'About Us',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Disha Creations established in April 2006. Disha Creations is a premier Web Services Company for website and mobile app development on a global scale. Our business model focuses on having long-term strategic relationships with clients and related to improve clients business and revenue. Our team work after research and analysis. We work with agile methodology so you will get best result.',
              ),
            ),

            // Our Strengths Section
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
              title: Text('B-34, Dhan Shree Tower-I, Central Spine, Vidhyadhar Nagar, Jaipur – 302039, India'),
            ),
          ],
        ),
      ),
    );
  }
}
