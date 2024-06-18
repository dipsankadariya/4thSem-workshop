import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score App",
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int scoreA = 0;
  int scoreB = 0;

  void increaseA() {
    setState(() {
      scoreA++;
    });
  }

  void decreaseA() {
    setState(() {
      scoreA--;
    });
  }

  void increaseB() {
    setState(() {
      scoreB++;
    });
  }

  void decreaseB() {
    setState(() {
      scoreB--;
    });
  }

  void reset() {
    setState(() {
      scoreA = 0;
      scoreB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      floatingActionButton: Container(
        child: IconButton(
          onPressed: reset,
          icon: Icon(Icons.delete),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.lightBlueAccent,
        ),
        height: 80,
        width: 80,
      ),
      appBar: AppBar(
        title: const Text(
          "Score App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Board A",
                style: TextStyle(fontSize: 50, color: Colors.deepPurple),
              ),
              Text(
                "$scoreA",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: increaseA,
                      icon: Icon(Icons.arrow_upward),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    ),
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: IconButton(
                      onPressed: decreaseA,
                      icon: Icon(Icons.arrow_downward),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent,
                    ),
                    height: 80,
                    width: 80,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Board B",
                style: TextStyle(fontSize: 50, color: Colors.deepPurple),
              ),
              Text(
                "$scoreB",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: increaseB,
                      icon: Icon(Icons.arrow_upward),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    ),
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: IconButton(
                      onPressed: decreaseB,
                      icon: Icon(Icons.arrow_downward),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    height: 80,
                    width: 80,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
