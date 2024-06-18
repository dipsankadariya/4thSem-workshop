import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Day3",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Listing Items",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          leading: const Icon(
            //add icom to the right corner of the app bar.
            Icons.menu,
            color: Colors.white,
          ),
          actions: const [
            //add  padding to the icons, not actions.
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: const Center(
          child: Text("Hello, world!"),
        ),
      ),
    );
  }
}
