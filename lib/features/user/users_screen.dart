import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maxsulotlar"),
      ),
      body: const Center(
        child: Text(
          "Salom",
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
