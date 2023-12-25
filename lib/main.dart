import 'package:flutter/material.dart';
import 'package:fqa_challenge/resource/strings.dart';
import 'package:fqa_challenge/screen/login_screen.dart';
import 'package:fqa_challenge/screen/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        Strings.screenLogin: (context) => const LoginPage(),
        Strings.screenRegister: (context) => const RegisterPage()
      },
    );
  }
}
