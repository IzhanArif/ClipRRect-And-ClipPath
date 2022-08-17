// ignore_for_file: prefer_const_constructors

import 'package:cliprrect/clipper.dart';
import 'package:cliprrect/images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ClipRRect And ClipPath"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Images()),
              ClipOval(
                child: Images(),
              ),
              ClipPath(clipper: TriangleClipper(), child: Images()),
            ],
          ),
        ),
      ),
    );
  }
}
