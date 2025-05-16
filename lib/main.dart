import 'package:coffee_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth/onboarding.dart';
import 'auth/sign_in_page.dart';
import 'auth/sign_up_page.dart';
import 'bloc/cart/cart_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coffee App',
        theme: ThemeData(
          primaryColor: const Color(0xFF55433C),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
          ),
        ),
        home: const OnboardingPage(),
        routes: {
          '/homepage': (context) => const HomePage(),
          '/signup': (context) => const SignUpPage(),
          '/signin': (context) => const SignInPage(),
        },
      ),
    );
  }
}
