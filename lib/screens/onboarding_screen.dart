import 'package:flutter/material.dart';
import 'package:project/screens/onboarding_three.dart';
import 'package:project/screens/search_screen.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onBoarding_two.dart';
import 'onboardinig_one.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {

  PageController _controller = PageController();
  bool onLastPage =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(children: [

      PageView(
        onPageChanged: (index){
        setState(() {
          onLastPage =(index==2);
        });
      },
        controller: _controller,
        children: [
          OnBoardingOne(),
          OnBoardingTwo(),
          OnBoardingThree()

        ],
      ),
          Container(
            alignment: Alignment(0,0.80),
             // alignment: Alignment(0,0.01),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(child: Text("Skip",style: TextStyle(color: Color(0xff202F2F),fontSize: 15)),
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3,
                    axisDirection: Axis.horizontal,effect: SlideEffect(
                        activeDotColor: Color(0xff9D691E),
                        dotColor: Color(0xff1F2E2E),
                        dotHeight: 10,
                        dotWidth: 10
                    ),),
                  onLastPage ?
                  GestureDetector(child: Text("Done",style: TextStyle(color: Color(0xff202F2F),fontSize: 15)),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)  {
                        return SearchScreen();
                      }));
                    },

                  )
                      : GestureDetector(child: Text("Next",style: TextStyle(color: Color(0xff202F2F),fontSize: 15),),
                    onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },

                  ),
                ],
              )

          ),

    ])


        );
  }
}


