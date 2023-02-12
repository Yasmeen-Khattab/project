import 'package:flutter/material.dart';





class OnBoardingThree extends StatefulWidget {
  const OnBoardingThree({Key? key}) : super(key: key);

  @override
  State<OnBoardingThree> createState() => _OnBoardingThreeState();
}

class _OnBoardingThreeState extends State<OnBoardingThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff202F2F),

        body:  Center(
          child: Column(

            children: [
              SizedBox(height: 110,),
              Text('Save Your',style: TextStyle(color: Color(0xffF9DA99),fontWeight: FontWeight.bold,fontSize:38 ),),
              Text('Money',style: TextStyle(color: Color(0xffD8511F),fontWeight: FontWeight.bold,fontSize: 38)),
              Text('By calculate daily farm \n            earning',style: TextStyle(color: Color(0xffF9DA99),fontSize:22 )),

              SizedBox(
                height: 5,
              ),
              Image.asset('images/Frame 6.png',),
            ],
          ),
        )
    );

  }
}
