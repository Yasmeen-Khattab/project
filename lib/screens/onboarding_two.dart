import 'package:flutter/material.dart';

import 'onboarding_three.dart';

class OnBoardingTwo extends StatefulWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardingTwo> createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff202F2F),

        body:  Center(
          child: Column(

            children: [
              SizedBox(height: 110,),
              Text('Link Robot',style: TextStyle(color: Color(0xffF9DA99),fontWeight: FontWeight.bold,fontSize:38 ),),
              Text('With App',style: TextStyle(color: Color(0xffD8511F),fontWeight: FontWeight.bold,fontSize: 38)),
              Text('For caring your farm',style: TextStyle(color: Color(0xffF9DA99),fontSize:22 )),

              SizedBox(
                height: 5,
              ),
              Image.asset('images/frame5.png',),
            ],
          ),
        )
    );
  }
}
