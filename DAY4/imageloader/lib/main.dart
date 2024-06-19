import 'package:flutter/material.dart';

void main() {
  runApp(const ImageLoaderApp());
}

class ImageLoaderApp extends StatelessWidget {
  const ImageLoaderApp({super.key});

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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String photoPath = "assets/images/ticktack.png";
  TextEditingController textController = TextEditingController();

  void loadImage() {
    setState(() {
      photoPath = "assets/images/" + textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(163, 7, 121, 234),
        title: const Text(
          "Image Loader",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.orange),
            ),
            child: Image.asset(photoPath,
                errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Text(
                  'Image not found',
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
              );
            }),
          ),
          SizedBox(height: 50),
          Container(
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: "Enter image name (e.g., ticktack.png)",
                labelStyle: TextStyle(color: Colors.orangeAccent, fontSize: 14),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: loadImage,
            child: Text("Show"),
          ),
        ],
      ),
    );
  }
}
