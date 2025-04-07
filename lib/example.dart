import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter Project"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),


      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
         
        children: [
          Text(
            "this is Row",
            style: TextStyle(fontSize: 28),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ]
        
        ),
      ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         // mainAxisSize: MainAxisSize.min,
//       children: [
//   Text(
//     "this is column",
//     style: TextStyle(fontSize: 28),
//   ),
//   SizedBox(height: 500), 
//   Container(
//     width: 200,
//     height: 200,
//     color: Colors.red,
//   ),
// ]
//      ),
    );
  } 
}

