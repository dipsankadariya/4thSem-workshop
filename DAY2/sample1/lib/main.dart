import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "HealthSphere",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blue[900], // Dark blue for app bar background
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Welcome to HealthSphere",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900], // Dark blue for headings
                ),
              ),
              SizedBox(height: 20),
              const Text(
                "HealthSphere is your go-to application for quick access to essential medical information during emergencies and beyond. ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.black87, // Dark grey for body text
                ),
              ),
              SizedBox(height: 5),
              const Text(
                "Designed with simplicity and accessibility in mind, HealthSphere empowers users with straightforward yet comprehensive medical insights at their fingertips.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.black87, // Light grey for additional text
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Key Features:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900], // Dark blue for headings
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "1. Regular updates and tips on maintaining a healthy lifestyle.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.black87, // Dark grey for body text
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "2. Quick access to essential medical information.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.black87, // Dark grey for body text
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "3. User-friendly interface for easy navigation.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.black87, // Dark grey for body text
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "4. Emergency contact information.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.black87, // Dark grey for body text
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor:
              Colors.blue[900], // Dark blue for floating action button
          child: const Icon(
            Icons.home_filled,
            size: 30,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue[900], // Dark blue for bottom app bar
          child: Container(
            height: 50.0,
            child: const Center(
              child: Text(
                "© 2024 HealthSphere. All Rights Reserved.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
