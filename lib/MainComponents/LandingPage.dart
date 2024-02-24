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
        child: SingleChildScrollView(child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Our Strengths',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Display strengths using a ListView or Column
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    StrengthItem('Our own Web Server on Internet Gateway', fontSize: 10),
                    StrengthItem('More than 17 years of experience in Web Development', fontSize: 10),
                    StrengthItem('An assurance to serve you better & longer', fontSize: 10),
                    StrengthItem('Our Focus - Customer Satisfaction & Better Services', fontSize: 10),
                    StrengthItem('Complete technical support for all web solutions', fontSize: 10),
                  ],
                ),
              ),
            ),

            // Services Section
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StrengthsPage2()),
                  );
                },
                child: Text(
                  'Our Services',
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}

class ServicesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      child: ListView(
        shrinkWrap: true,
        children: [
          StrengthItem('Website Designing & Development', fontSize: 16),
          StrengthItem('Website Maintenance & Support', fontSize: 16),
          StrengthItem('Ecommerce Website Development', fontSize: 16),
          StrengthItem('Web Application Development', fontSize: 16),
          StrengthItem('Mobile App Development', fontSize: 16),
          StrengthItem('Domain Name Registration', fontSize: 16),
          StrengthItem('Web Hosting Services', fontSize: 16),
          StrengthItem('VPS & Dedicated Servers', fontSize: 16),
          StrengthItem('Business Email Solutions', fontSize: 16),
          StrengthItem('Security & SSL', fontSize: 16),
        ],
      ),
    );
  }
}

class StrengthItem extends StatelessWidget {
  final String text;
  final double fontSize;

  StrengthItem(this.text, {this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.green),
          SizedBox(width: 8.0),
          Text(text, style: TextStyle(fontSize: fontSize)),
        ],
      ),
    );
  }
}


class StrengthsPage2 extends StatelessWidget {
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
            // Contact Details Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Our Services',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Display services using a ListView or Column
            ServicesList(),
            // Contact Details Section
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StrengthsPage3()),
                  );
                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class StrengthsPage3 extends StatelessWidget {
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
            Container(
              child: Image(
                image: AssetImage(
                    'Assets/CompanyLogo/Disha Creations-logos_white.png'),
              ),
            ),
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
      ),
    );
  }
}