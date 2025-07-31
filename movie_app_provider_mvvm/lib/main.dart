import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_theme.dart';
import 'package:movie_app_provider_mvvm/screens/movie_screen.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.lighttheme,
      home: MovieScreen(),
    );
  }
}
