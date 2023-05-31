import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black54))
      ),
      home: const HomeScreen(),
    );
  }
}

