import 'package:coffee_app/home_page.dart';
import 'package:flutter/material.dart';

import 'auth/onboarding.dart';
import 'auth/sign_in_page.dart';
import 'auth/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const OnboardingPage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const SignInPage(),
      },
    );
  }
}
