import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter Project"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.white, width: 2),
              color: Colors.black,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Text',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 40),
                // Clean right-side container (no yellow part)
                Container(
                  width: 100,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.transparent, // Make sure no background
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
