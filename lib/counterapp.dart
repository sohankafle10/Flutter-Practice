import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
   Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),

body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      counter.toString(),
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(height: 20),
    Text(
      counter > 0
          ? "Positive"
          : counter < 0
              ? "Negative"
              : "Zero",
      style: TextStyle(
        fontSize: 24,
        color: Colors.blueGrey,
      ),
    ),
  ],
),

floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    FloatingActionButton(
      onPressed: () {
        setState(() {
          counter = counter + 1;
        });
        print(counter);
      },
      child: Icon(Icons.add),
    ),
    SizedBox(width: 10),
    FloatingActionButton(
      onPressed: () {
        setState(() {
          counter = counter - 1;
        });
        print(counter);
      },
      child: Icon(Icons.remove),
    ),
  ],
),


        
    );
  }
}