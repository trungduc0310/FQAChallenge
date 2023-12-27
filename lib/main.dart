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
          textTheme: TextTheme(
              titleLarge: TextStyles.textSemiBold.copyWith(fontSize: 24),
              titleMedium: TextStyles.textSemiBold.copyWith(fontSize: 17),
              titleSmall: TextStyles.textSemiBold.copyWith(fontSize: 14),
              displayLarge: TextStyles.textSemiBold.copyWith(fontSize: 16),
              displayMedium: TextStyles.textMedium.copyWith(fontSize: 14),
              displaySmall: TextStyles.textRegular.copyWith(fontSize: 14),
              bodyLarge: TextStyles.textMedium.copyWith(fontSize: 14),
              bodyMedium: TextStyles.textRegular.copyWith(fontSize: 16),
              bodySmall: TextStyles.textRegular.copyWith(fontSize: 12), )),
      routes: {
        Strings.screenLogin: (context) => LoginPage(),
        Strings.screenRegister: (context) => RegisterPage(),
        Strings.screenHome: (context) => const HomePage()
      },
    );
  }
}
