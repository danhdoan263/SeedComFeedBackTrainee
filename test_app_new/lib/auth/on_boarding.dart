import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool isLogin = false;

  void handleLoginPressed() {
    setState(() {
      isLogin = true;
    });
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          key: Key('onboarding'),
          padding: const EdgeInsets.only(
            top: 64,
            left: 36,
            right: 36,
            bottom: 15,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 14, left: 14),
                child: Image.asset(
                  'assets/images/onboarding.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                margin: const EdgeInsets.only(bottom: 79),
                child: Column(
                  key: Key('onboarding-textCenter'),
                  children: [
                    Text(
                      'Discover Your Dream Job here',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1F41BB),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Discover Your Dream Job here',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                key: Key('onboarding-button'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(137, 31, 65, 187),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff1F41BB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.fromLTRB(53, 15, 53, 15),
                        ),
                        onPressed: handleLoginPressed,
                        child: Text('Login'),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('Register')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
