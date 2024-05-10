
import 'package:bella/features/home/views/homescreen.dart';
import 'package:flutter/material.dart';



void main( ){
  runApp(QuizApp());
}


class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}


