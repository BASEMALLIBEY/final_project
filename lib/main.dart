import 'package:final_project/login.dart';
import 'package:final_project/signin.dart';
import 'package:final_project/wlcomeBack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WlcomeBack(), routes: <String, WidgetBuilder>{
      '/login': (context) => LogIn(),
      '/signin': (context) => Signin(),
      //you are paice of my hard baby mmmmmmoh 

    });
  }
}
