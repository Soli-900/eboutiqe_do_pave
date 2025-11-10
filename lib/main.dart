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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eboutiqe Do Pave'),
        ),
        body: const Center(
          child: Text('Welcome to Eboutiqe Do Pave!'),
        ),
      ),
    );
  }
}
