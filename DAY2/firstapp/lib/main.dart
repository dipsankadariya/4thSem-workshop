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
            'First Application',
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
              "welcome to my first application",
              style: TextStyle(
                color: Color.fromRGBO(20, 20, 20, 0.965),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "This is the first app i created using flutter.",
              style: TextStyle(
                color: Color.fromRGBO(20, 20, 20, 0.965),
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Thanks for visiting.",
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
