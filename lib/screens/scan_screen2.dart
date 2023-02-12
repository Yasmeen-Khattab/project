import 'package:flutter/material.dart';
import 'package:project/screens/create_scan.dart';
import 'package:project/screens/read_scan.dart';

class ScanScreenn extends StatefulWidget {
  const ScanScreenn({Key? key}) : super(key: key);

  @override
  State<ScanScreenn> createState() => _ScanScreennState();
}

class _ScanScreennState extends State<ScanScreenn> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Center(
       child: Row(

         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
    children: [
        SizedBox(
          width: 20,
        ),
       InkWell(child: Text('Read',style: TextStyle(fontSize: 20,),),

onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateScan()));
},
    ),

        SizedBox(
          width: 10,
        ),
        InkWell(child: Text('Scan',style: TextStyle(fontSize: 20,),),

          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadScan()));

          },
        )


    ],
    ),
     )
    );
  }
}
