import 'package:flutter/material.dart';
import '../widgets/default_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -100,
            right: -100,
            child: Image.asset(
              'assets/images/holder_right.png',
              width: 400,
              height: 400,
            ),
          ),
          
        ],
      ),
    );
  }
}
