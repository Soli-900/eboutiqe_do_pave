import 'package:eboutiqe_do_pave/utills/black_button.dart';
import 'package:eboutiqe_do_pave/utills/otb_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 30,
              bottom: 10,
            ),
            child: Text(
              'OTP Verification',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 0,
              bottom: 10,
            ),
            child: Text(
              "Enter the verification code we just sent on your email\naddress.",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8391A1),
                ),
              ),
            ),
          ),

          Form(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 0,
                right: 0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtbBox(),
                  OtbBox(),
                  OtbBox(),
                  OtbBox(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 30
            ),
            child: BlackButton(buttonText: 'Verify', buttonOnPressed: ()=> Navigator.of(context).pushNamed('new_password')),
          ),
          Spacer(), // makes the button at the end of the screen
          Padding(
            // register button
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t received code?',
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1E232C),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend',
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        color: Color(0xff3AA1FF),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
