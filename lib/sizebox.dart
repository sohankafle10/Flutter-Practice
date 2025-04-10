import 'package:flutter/material.dart';

class Sizebox extends StatelessWidget {
  const Sizebox({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sizebox"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        ),
body: SizedBox(
  width: double.infinity,

child:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("I am Sohan",
    style: TextStyle(
      fontSize: 26,
    ),
    ),
  ],
),
),

      );
}
}