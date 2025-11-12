import 'package:eboutiqe_do_pave/utills/black_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // Changeing the back icon
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset('assets/images/login/Successmark.svg'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Password Changed!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Your password has been\n   changed successfully.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8391A1),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              left: 16,
              right: 16,
              bottom: 10,
            ),
            child: BlackButton(
              buttonText: 'Back to Login',
              buttonOnPressed: () =>
                  Navigator.of(context).popUntil(ModalRoute.withName('login')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 60,
              top: 10,
            ),
            child: MaterialButton(
              elevation: 0,
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('Home', (route)=>false),
              color: Colors.white,
              shape: BoxBorder.all(
                color: Color(0xff363636),
                width: 1.5,

                style: BorderStyle.solid
              ),
              minWidth: double.infinity, // full width button
              height: 50,
              

              child: Text(
                'Go Shopping',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xff363636),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
