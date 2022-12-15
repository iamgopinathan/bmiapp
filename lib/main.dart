import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/restuarant.dart';
import 'package:flutter_application_1/screens/home.dart';

void main()=>runApp(new myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'BMI CALCULATOR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: home(),
    );
  }
}