import 'package:flutter/material.dart';
import 'package:tuts/pages/home_page.dart';
import 'package:tuts/pages/movie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoviePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
