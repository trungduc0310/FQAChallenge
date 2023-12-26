import 'package:flutter/material.dart';
import 'package:fqa_challenge/locator.dart';
import 'package:fqa_challenge/resource/strings.dart';
import 'package:fqa_challenge/resource/text_style.dart';
import 'package:fqa_challenge/screen/home/home_screen.dart';
import 'package:fqa_challenge/screen/login/login_screen.dart';
import 'package:fqa_challenge/screen/register/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isLogin = await Locator.appPref.isLogin();
  runApp(MyApp(isLogin: isLogin));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isLogin});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogin ? const HomePage() : LoginPage(),
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.white,
          textTheme: const TextTheme(
            titleLarge: TextStyles.textTitleScreenStyle,
          )),
      routes: {
        Strings.screenLogin: (context) => LoginPage(),
        Strings.screenRegister: (context) => RegisterPage(),
        Strings.screenHome: (context) => const HomePage()
      },
    );
  }
}
