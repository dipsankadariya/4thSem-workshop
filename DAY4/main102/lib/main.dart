import 'package:flutter/widgets.dart';
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String text = '';
  int result = 0;
  TextEditingController num1 = TextEditingController(text: "");
  TextEditingController num2 = TextEditingController(text: "");

  void add() {
    setState(() {
      if (num1.text == '' || num2.text == '') {
        text = "Please Enter a number";
      } else {
        result = int.parse(num1.text) + int.parse(num2.text);
      }
    });
  }

  void subtract() {
    setState(() {
      if (num1.text == '' || num2.text == '') {
        text = "Please Enter a number";
      } else {}
      result = int.parse(num1.text) - int.parse(num2.text);
    });
  }

  void multiply() {
    setState(() {
      if (num1.text == '' || num2.text == '') {
        text = "Please Enter a variable";
      } else {
        result = int.parse(num1.text) * int.parse(num2.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              width: 200,
              child: TextField(
                controller: num1,
                decoration: InputDecoration(
                    hintText: "Enter First number",
                    labelText: "1st number",
                    border: OutlineInputBorder()),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 200,
              child: TextField(
                controller: num2,
                decoration: InputDecoration(
                    hintText: "Enter Second number",
                    labelText: "2nd number",
                    border: OutlineInputBorder()),
              )),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output : ${text} ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "${result}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 50,
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: add,
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.orange, fontSize: 40),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: subtract,
                child: Text(
                  "-",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 40,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: multiply,
                child: Text(
                  "x",
                  style: TextStyle(color: Colors.orange, fontSize: 40),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
