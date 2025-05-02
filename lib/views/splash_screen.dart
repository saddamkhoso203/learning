
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning/views/task_five.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  State<SplashScreen> createState() => _SplashScreenState();
}

 class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.green,
      body: Center(
        child: Text("Splash Screen", style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),),
      ),
    );
  }
}

