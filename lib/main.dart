import 'package:flutter/material.dart';
import 'package:todolist/VIews/Home.dart';
import 'package:todolist/VIews/login.dart';
import 'package:todolist/VIews/signup.dart';


void main() {


  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',

      home:Home(),
    );
  }
}


