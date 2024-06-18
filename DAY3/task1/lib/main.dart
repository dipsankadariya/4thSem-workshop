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
      title: "day3",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Task1 ",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search, color: Colors.white),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.circle),
                          iconSize: 200,
                          color: Colors.blue,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.circle),
                          iconSize: 200,
                          color: Colors.purple,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.circle),
                          iconSize: 200,
                          color: Colors.orange,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.circle),
                          iconSize: 200,
                          color: Colors.red,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.circle),
                          iconSize: 200,
                          color: Colors.yellowAccent,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.rectangle,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.rectangle,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.rectangle,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                      )),
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
