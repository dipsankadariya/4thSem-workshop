import 'package:api_int/api.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API integration"),
      ),
      body: Column(
        children: [
          TextButton(onPressed: callApi, child: Text("Call Api")),
        ],
      ),
    );
  }
}
