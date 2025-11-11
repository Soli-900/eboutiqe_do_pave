import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Getstart extends StatelessWidget {
  const Getstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(), // Pushes the logo to vertical center
            Center(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                width: 197, // optional size
                height: 34.48,
              ),
            ),
            const Spacer(), // Keeps logo centered vertically
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 14,bottom: 10,left: 10), // padding from edges
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
                color: Colors.white,
                minWidth: double.infinity, // full width button
                height: 50,
                
                child:  Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xff151515),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}