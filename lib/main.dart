import 'package:basic_dart/containers.dart';
import 'package:basic_dart/example.dart';
import 'package:basic_dart/homepage.dart';
import 'package:basic_dart/imagee.dart';
import 'package:basic_dart/practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Imagee()
    );
  }
}

