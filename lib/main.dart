import 'package:flutter/material.dart';
import 'package:whatsapp/screens/splash_screen.dart';

import 'constant_data.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: light_green,
        hintColor: const Color(0xFF128C7E),
      ),
      home: const SplashScreen(),
    );
  }
}




