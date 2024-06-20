import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List productList = [
    {"name": "Banana", "Price": '20', "Stock": 40},
    {"name": "Orange", "Price": '15', "Stock": 30},
    {"name": "Mango", "Price": '25', "Stock": 10},
    {"name": "DragonFruit", "Price": '35', "Stock": 25},
    {"name": "grapes", "Price": '15', "Stock": 35},
    {"name": "apple", "Price": '15', "Stock": 10},
    {"name": "pineapple", "Price": '15', "Stock": 25},
    {"name": "jackfruit", "Price": '15', "Stock": 15},
    {"name": "papaya", "Price": '15', "Stock": 20},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product list",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Color.fromARGB(255, 231, 202, 115),
                      leading: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset("images/image.webp"),
                      ),
                      textColor: Colors.red,
                      title: Text(
                        "${product['name']}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            "Price: ${product['Price']}",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            " Stock:  ${product['Stock']}",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Click Here to go back to main page '),
            ),
          ],
        ),
      ),
    );
  }
}
