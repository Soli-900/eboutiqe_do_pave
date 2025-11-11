import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  //controller
  PageController pageController = PageController();
  int currentPage = 0;
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      //background color
      color: Colors.white,
      child: Column(
        //main column
        children: [
          Padding(
            // skip button
            padding: const EdgeInsets.only(top: 46, left: 315, right: 10),
            child: GestureDetector(
              onTap: () {
                //navigate to home screen
                Navigator.of(context,).pushNamedAndRemoveUntil('Getstart', (route) => false);
              },
              child: Text(
                
                  'Skip',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ),
            
          ),
          //text section
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 0,
              top: 10,
              bottom: 10,
            ),
            child: Text(
              'Everything is there\nFor your beauty needs',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //indicator section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //indicators
              Padding(
                padding: const EdgeInsets.only(left: 36, bottom: 20, top: 50),
                child: SmoothPageIndicator(
                  controller: pageController, // PageController
                  count: 3,

                  effect: ScaleEffect(
                    activeDotColor: Color(0xFFff0000),
                    dotColor: Color(0xffD9D9D9),
                    dotHeight: 10,
                    dotWidth: 10,
                    radius: 20.35,


                  ), // your preferred effect
                  onDotClicked: (index) {
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
                Padding(padding: EdgeInsets.only(right: 20,top: 20),
                child: 
                isLastPage ?
                GestureDetector(
                  onTap: () {
                    Navigator.of(context,).pushNamedAndRemoveUntil('Getstart', (route) => false);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 22,),
                  ),
                ) :   GestureDetector(
                  onTap: () {
                    pageController.nextPage(duration: Duration(milliseconds: 600), curve: Curves.ease);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 22,),
                  ),
                ), 
                )
              //next button
            ],
          ),

          //image section
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                  if (index == 2) {
                    isLastPage = true;
                  } else {
                    isLastPage = false;
                  }
                });
                
              },
              controller: pageController,
              children: [
                //page 1
                Stack(
                  alignment: Alignment.center,
                  children: [
                    
                    SizedBox.expand(
                      child: Image.asset(
                        'assets/images/boarding/boarding1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 420,
                      bottom: 0,
                      child: SvgPicture.asset('assets/images/logo.svg', )),
                  ],
                ),
                 Stack(
                  alignment: Alignment.center,
                  children: [
                    
                    SizedBox.expand(
                      child: Image.asset(
                        'assets/images/boarding/boarding2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 420,
                      bottom: 0,
                      child: SvgPicture.asset('assets/images/logo.svg', )),
                  ],
                ),
                //page 3
                 Stack(
                  alignment: Alignment.center,
                  children: [
                    
                    SizedBox.expand(
                      child: Image.asset(
                        'assets/images/boarding/boarding3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 420,
                      bottom: 0,
                      child: SvgPicture.asset('assets/images/logo.svg', )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
