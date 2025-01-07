import 'package:flutter/material.dart';
import 'Signup_screen.dart';
import 'forgot_passsword.dart';
import 'login_sxreen.dart';
import 'otp_screen.dart';
import 'register_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LoginPage()
    );
  }
}

