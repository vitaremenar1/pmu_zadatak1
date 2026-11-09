import 'package:flutter/material.dart';
import 'package:pmu4_p1/screens/home_screen.dart'; // Prilagodi putanju prema svom projektu

void main() {
  runApp(const PostsApp());
}

class PostsApp extends StatelessWidget {
  const PostsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), // Promijenjena boja u plavu (prikladnije za objave nego narančasta za potrese)
      ),
      home: const HomeScreen(),
    );
  }
}