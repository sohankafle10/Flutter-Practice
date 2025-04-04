// import 'package:flutter/material.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("This is app bar"),
//         centerTitle: true,


//       ),

//       body: Center(
//         child: Container(width: 200, 
//         height: 110,
//         //  color: Colors.black,
//          decoration: BoxDecoration(
//           color:Colors.red,
// borderRadius: BorderRadius.circular(10),
// // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(100) ),



//           border: Border.all(
//           color: Colors.green,
//           width: 10,)
//          ),
//          alignment: Alignment.center,
//         child: Text("Hello",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 28,
//         ),
//         ),
//         ),
//       //   child: Text("Hello World",
//       // style: TextStyle(
//       //   fontSize: 23,
//       //   color: Colors.blue,
//       //   fontWeight: FontWeight.bold,
//       //   letterSpacing: 8,
//       // ),
//       // )
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First flutter project"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              topLeft: Radius.circular(100),
            ),
            border: Border.all(color: Colors.green, width: 15),
          ),
          alignment: Alignment.center,
          child: Text(
            "This is child class",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),
    );
  }
}