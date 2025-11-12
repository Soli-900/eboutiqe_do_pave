import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtbBox extends StatefulWidget {
  const OtbBox({super.key});

  @override
  State<OtbBox> createState() => _OtbBoxState();
}

class _OtbBoxState extends State<OtbBox> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();

  }

  @override
  Widget build(BuildContext context) {
    bool hasText = _controller.text.isEmpty;
    return Container(
      width: 70,
      height: 60,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: _controller,
        showCursor: false,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: GoogleFonts.urbanist(
          textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        decoration: InputDecoration(
          counterText: '',

          filled: true,
          fillColor: Color(0xffF7F8F9),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(
              color: hasText?  Color(0xffE8ECF4) : const Color(0xff363636),
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(
              color: Color(0xff363636),
              style: BorderStyle.solid,
              width: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
