import 'package:demo/pages/home.dart';
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
        title: 'Tour Booking',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple, primary: const Color(0xFF1F1F29)),
            useMaterial3: true),
        home: const HomePage());
  }
}
