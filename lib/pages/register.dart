import 'package:eboutiqe_do_pave/utills/black_button.dart';
import 'package:eboutiqe_do_pave/utills/sm_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              'Hello! Register to get\nstarted',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1E232C),
                ),
              ),
            ),
          ), // end of main welcom

          Form(
            // Start of text forms for password and email
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),

                  child: TextFormField(
                    //start of email
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),
                      hintText: 'Username',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8391A1),
                        ),
                      ),
                    ),
                  ),
                ), // end of email text form
                Padding(
                  //start of passeord form
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 15,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),
                      hintText: 'Email',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8391A1),
                        ),
                      ),
                    ),
                  ),
                ), // end of password text form
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
                      hintText: 'Password',
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
              buttonText: 'Register',
              buttonOnPressed: () {
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil('login', (route) => false);
              },
            ), // end of login button
          ),
          // Start of Sperator for login with
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 8,
              right: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/images/login/Line.svg',
                  colorFilter: ColorFilter.mode(
                    Color(0xffE8ECF4),
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  'Or Register With',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A707C),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/login/Line.svg',
                  colorFilter: ColorFilter.mode(
                    Color(0xffE8ECF4),
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ), // end of Sperator for login with
          //start of login with SM
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmBox(
                iconPath: 'assets/images/login/facebook_ic.svg',
                iconPressed: () {},
              ),
              SmBox(
                iconPath: 'assets/images/login/google_ic.svg',
                iconPressed: () {},
              ),
              SmBox(
                iconPath: 'assets/images/login/appel_ic.svg',
                iconPressed: () {},
              ),
            ],
          ), // end of login with SM
          Spacer(), // makes the button at the end of the screen
          Padding(
            // register button
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1E232C),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'Login Now',
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
        ], // end of main column children
      ), //End of main column
    );
  }
}
