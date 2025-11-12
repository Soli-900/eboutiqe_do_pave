import 'dart:async';

import 'package:eboutiqe_do_pave/pages/forgetpassword.dart';
import 'package:eboutiqe_do_pave/pages/getstart.dart';
import 'package:eboutiqe_do_pave/pages/home_screen.dart';
import 'package:eboutiqe_do_pave/pages/login.dart';
import 'package:eboutiqe_do_pave/pages/new_password.dart';
import 'package:eboutiqe_do_pave/pages/onboarding.dart';
import 'package:eboutiqe_do_pave/pages/otp_verification.dart';
import 'package:eboutiqe_do_pave/pages/password_changed.dart';
import 'package:eboutiqe_do_pave/pages/register.dart';
import 'package:eboutiqe_do_pave/pages/splach.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  runApp(const MyApp());
    Timer(const Duration(seconds: 1), () {
    FlutterNativeSplash.remove();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
   

      debugShowCheckedModeBanner: false,
      home:  Splach(),
      routes: {
        'Home': (context) => const HomeScreen(),
        'onboarding': (context) => const Onboarding(),
        'Getstart': (context) => const Getstart(),
        'login': (context) => const Login(),
        'forgetpassword': (context) => const Forgetpassword(),
        'Register': (context) => const Register(),
        'OTP': (context) => const OtpVerification(),
        'new_password': (context) => const NewPassword(),
        'password_changed': (context) => const PasswordChanged(),
      },
    );

  }
}
