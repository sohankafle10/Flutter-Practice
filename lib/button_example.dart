import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          FilledButton(onPressed: () {}, child: Text("Button 1")),

          FilledButton.tonal(onPressed: () {}, child: Text("Button2")),
          FilledButton.tonalIcon(
            onPressed: () {},
            label: Text("Add"),
            icon: Icon(Icons.add),
          ),

          IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          ElevatedButton(onPressed: () {}, child: Icon(Icons.back_hand)),
          

          GestureDetector(
              onDoubleTap: (){
                print("Hello");
              },
              onLongPress: (){
                print("LongPressed");
              },
              child: Container(
                height: 200,
                width:200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
              ),
            ),


InkWell(
  onTap: (){

    print("object");
  },
  child: Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      color: Colors.lightBlueAccent,
      shape: BoxShape.circle,
    ),
  ),
),



        ],
      ),
    );
  }
}
