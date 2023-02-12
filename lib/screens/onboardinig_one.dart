import 'package:flutter/material.dart';
import 'onBoarding_two.dart';

class OnBoardingOne extends StatefulWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  State<OnBoardingOne> createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202F2F),
      
      body:  Center(
        child: Column(

          children: [
            SizedBox(height: 110,),
            Text('Diagnose Your',style: TextStyle(color: Color(0xffF9DA99),fontWeight: FontWeight.bold,fontSize:38 ),),
            Text('Chicknes',style: TextStyle(color: Color(0xffD8511F),fontWeight: FontWeight.bold,fontSize: 38)),
            Text('      By only using your\n        mobile camera',style: TextStyle(color: Color(0xffF9DA99),fontSize:22 )),

            SizedBox(
              height: 13,
            ),
            Image.asset('images/Frame 4.png',),
          ],
        ),
      )
    );

  }
}
