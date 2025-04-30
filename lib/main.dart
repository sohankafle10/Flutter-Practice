import 'package:basic_dart/BookTrip.dart';
import 'package:basic_dart/button_example.dart';
import 'package:basic_dart/commerce.dart';
import 'package:basic_dart/containers.dart';
import 'package:basic_dart/counterapp.dart';
import 'package:basic_dart/example.dart';
import 'package:basic_dart/first_screen.dart';
import 'package:basic_dart/form_example.dart';
import 'package:basic_dart/homepage.dart';

import 'package:basic_dart/imagee.dart';
import 'package:basic_dart/lib/homepage.dart';
import 'package:basic_dart/practice.dart';
import 'package:basic_dart/sizebox.dart';
import 'package:basic_dart/ui_example.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: TodoApplication(),
      // routes: {
      //   AppRoutes.firstScreen: (ctx) => NamedFirstScreen(),
      //   AppRoutes.secondScreen: (ctx) => NamedSecondScreen(),
      // },
    );
  }
}

