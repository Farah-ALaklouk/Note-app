import 'package:flutter/material.dart';
import 'package:note_app/newNotes.dart';
import 'startscreen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  StartScreen(),
      routes:{
        "addnotes":(context) => newNotes()
      } ,
    );
  }
}



