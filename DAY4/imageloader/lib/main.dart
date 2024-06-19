import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Loader",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var photo = "assets/images/ticktack.png";

  void showImage() {
    setState(() {
      photo = 'assets/images/${texts.text}';
    });
  }

  TextEditingController texts = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image loader",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              child: Image.asset(photo),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                controller: texts,
                decoration: InputDecoration(
                  labelText: "Enter the image name",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: showImage,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                // Set the width and height here
              ),
              child: Text("Show Image"),
            ),
          ],
        ),
      ),
    );
  }
}
