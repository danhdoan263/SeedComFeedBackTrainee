import 'package:flutter/material.dart';
import 'auth/on_boarding.dart';
import 'auth/login_screen.dart';
void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      themeMode: ThemeMode.dark,
      title: 'TODO App',
      home: OnBoarding(),
      routes: {'/home': (context) => OnBoarding(),
      '/login': (context) => LoginScreen()},
    );
  }
}

