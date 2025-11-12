import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmBox extends StatelessWidget {
  const SmBox({super.key, required this.iconPath,required this.iconPressed});
  final VoidCallback iconPressed;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
                  width:106.24 ,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE8ECF4),width: 1,style:BorderStyle.solid )
                  ),
                  child: MaterialButton(onPressed: iconPressed,child: SvgPicture.asset(iconPath),),
                );
  }
}
