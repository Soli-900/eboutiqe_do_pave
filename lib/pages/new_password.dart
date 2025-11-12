import 'package:eboutiqe_do_pave/utills/black_button.dart';
import 'package:eboutiqe_do_pave/utills/sm_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start of app bar
      appBar: AppBar(
        leading: IconButton(
          // Changeing the back icon
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ), // End of App bar
      // start of body main column
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            // main welcom massege
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Create new password',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1E232C),
                ),
              ),
            ),
          ), // end of main welcom
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 0,
              bottom: 10,
            ),
            child: Text(
              "Your new password must be unique from those\npreviously used.",
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
            // Start of text forms for password and email
            child: Column(
              children: [
                Padding(
                  //start of passeord form
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 15,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),
                      hintText: 'New Password',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8391A1),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  //start of passeord form
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 15,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8391A1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //end of form

          Padding(
            //Strat of login button
            padding: const EdgeInsets.only(
              top: 16,
              right: 8,
              bottom: 16,
              left: 8,
            ), // padding from edges
            child: BlackButton(
              buttonText: 'Reset Password',
              buttonOnPressed: () {
                Navigator.of(
                  context,
                ).pushNamed('password_changed');
              },
            ), // end of login button
          ),

          // Start of Sperator for login with
        ], // end of main column children
      ), //End of main column
    );
  }
}
