import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.startFloat, // Corrected location
        floatingActionButton: Container(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_filled,
              size: 35,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            hoverColor: Color.fromRGBO(117, 203, 243, 1),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlueAccent),
        ),
        appBar: AppBar(
          title: const Text(
            'Medica Insight',
            style: TextStyle(
              color: Color.fromRGBO(206, 205, 205, 0.965),
              fontSize: 35,
            ),
          ),
          backgroundColor: Color.fromRGBO(3, 169, 244, 1),
          centerTitle: true,
        ),
        body: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "welcome to Medica Insight",
              style: TextStyle(
                color: Color.fromRGBO(20, 20, 20, 0.965),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "A website that uses AI to provide information on medical conditions, treatments, medications, and preventive care.",
              style: TextStyle(
                color: Color.fromRGBO(20, 20, 20, 0.965),
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Begin your Medical journey with Medica Insight.",
              style: TextStyle(
                color: Color.fromRGBO(20, 20, 20, 0.965),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
