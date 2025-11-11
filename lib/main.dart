import 'package:eboutiqe_do_pave/pages/forgetpassword.dart';
import 'package:eboutiqe_do_pave/pages/getstart.dart';
import 'package:eboutiqe_do_pave/pages/home_screen.dart';
import 'package:eboutiqe_do_pave/pages/login.dart';
import 'package:eboutiqe_do_pave/pages/onboarding.dart';
import 'package:eboutiqe_do_pave/pages/splach.dart';
import 'package:flutter/material.dart';

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
      home: const Splach(),
      routes: {
        'Home': (context) => const HomeScreen(),
        'onboarding': (context) => const Onboarding(),
        'Getstart': (context) => const Getstart(),
        'login': (context) => const Login(),
        'forgetpassword': (context) => const Forgetpassword(),
      },
    );

  }
}
