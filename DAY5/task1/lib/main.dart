import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Roll a Dice",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Random _random = Random();
  int diceNum = 1;
  String guessMessage = '';

  void checkTheGuess() {
    setState(() {
      int guess = int.tryParse(texts.text) ?? 0;
      if (guess == diceNum) {
        guessMessage = "Right Guess";
      } else {
        guessMessage = "Wrong Guess";
      }
    });
  }

  void rollDice() {
    setState(() {
      diceNum = _random.nextInt(6) + 1;
      guessMessage = '';
    });
  }

  TextEditingController texts = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Roll a dice",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset(
                  "images/${diceNum}.jpg",
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  rollDice();
                  checkTheGuess();
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Dice Rolled : ${diceNum}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 81, 143, 174),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextField(
                controller: texts,
                decoration: InputDecoration(
                  labelText: "Enter your guess",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              guessMessage,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
