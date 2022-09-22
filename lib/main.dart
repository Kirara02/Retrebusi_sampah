import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';
import 'package:retrebusi_sampah/ui/pages/home_page.dart';
import 'package:retrebusi_sampah/ui/pages/sign_in_page.dart';
import 'package:retrebusi_sampah/ui/pages/sign_up_page.dart';
import 'ui/pages/sign_up_as_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrebusi Sampah',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: greenColor,
          titleTextStyle: greyTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-as': (context) => const SignUpAsPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}