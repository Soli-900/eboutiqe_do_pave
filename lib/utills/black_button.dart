import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({super.key, required this.buttonText, required this.buttonOnPressed});
  final String buttonText;
  final VoidCallback buttonOnPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:  buttonOnPressed,
      color: Colors.black,
      minWidth: double.infinity, // full width button
      height: 50,
      elevation: 0,

      child: Text(
        buttonText,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
