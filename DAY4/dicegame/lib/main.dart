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
      title: "Dice Game",
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
  var random = Random();
  int diceNum = 1;

  int scoreTeamA = 0;
  int scoreTeamB = 0;
  bool isTeamATurn = true;
  String winMessage = "";

  void rollDice() {
    setState(() {
      diceNum = random.nextInt(6) + 1;
      if (isTeamATurn) {
        scoreTeamA += diceNum;
      } else {
        scoreTeamB += diceNum;
      }

      if (scoreTeamA >= 30 || scoreTeamB >= 30) {
        winnerTeam();
      }

      isTeamATurn = !isTeamATurn;
    });
  }

  void winnerTeam() {
    String winner = scoreTeamA >= 30 ? "Team A" : "Team B";
    setState(() {
      winMessage = "$winner wins!";
    });
  }

  void resetGame() {
    setState(() {
      scoreTeamA = 0;
      scoreTeamB = 0;
      isTeamATurn = true;
      winMessage = "";
      diceNum = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Game",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Team A",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$scoreTeamA",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/${diceNum}.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: rollDice,
                    child: Text("Roll"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Team B",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$scoreTeamB",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          if (winMessage.isNotEmpty)
            Text(
              winMessage,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ElevatedButton(
            onPressed: resetGame,
            child: Text("Reset Game"),
          ),
        ],
      ),
    );
  }
}
