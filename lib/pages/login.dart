import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = true;
  void togglePasswordVisibility() {
    setState(() {
      if (isPasswordVisible) {
        isPasswordVisible = false;
      } else {
        isPasswordVisible = true;
      }
    });
  }

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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
              'Welcome back! Glad to\nsee you, Again!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
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
                      hintText: 'Enter your email',
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
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 0
                  ),
                  child: TextFormField(
                    obscureText: isPasswordVisible,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE8ECF4)),
                      ),
                      hintText: 'Enter your password',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8391A1),
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: togglePasswordVisibility,
                        icon: isPasswordVisible
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.visibility_outlined),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          TextButton(onPressed: ()=> Navigator.pushNamed(context, 'forgetpassword'),
          
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 235,bottom: 10,top: 10),
            child: Text('Forget Password?',style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff6A707C),
              ),
            ),),
          )),
        ],
      ),
    );
  }
}
