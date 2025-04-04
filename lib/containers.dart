import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter Project"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.zero,
            border: Border.all(color: Colors.red, width: 15),
          ),
          child: Container(
            height: 10,
            width: 5,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: Colors.white, width: 5),
            ),
            alignment: Alignment.center,
            child: Text(
              "This is child class",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
