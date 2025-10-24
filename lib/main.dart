import 'package:finwise_ai_app/Screens/Home_Screen.dart';
import 'package:finwise_ai_app/Screens/Profile_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinWise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {'/ProfileScreen': (context) => ProfileScreen()},
    );
  }
}
