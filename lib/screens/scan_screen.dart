import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:project/screens/search_screen.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrstr = 'Result';

  @override
  Widget build(BuildContext context) {
    return


      Scaffold(
          body:
          Stack(
              children: [ Container(

                child: Image.asset(
                  'images/scan.png', height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,),


              ),
                Center(
                  child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 300.0),
                        child: Image.asset('images/scancam.png',height: 250,width: 250,),
                      ),
                      // Text(
                      //   qrstr,
                      //   style: TextStyle(color: Colors.blue, fontSize: 30),
                      // ),
                      onTap: (){
                        scanQr();
                      },
                    ),
                  ),


                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 500.0, left: 100),
                      child:
                        InkWell(child: Container(
                          height: 70,
                          width: 180,
                          decoration: BoxDecoration(
                            color:  Color(0xff41BBC7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text( 'Finish',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold))),
                          ),
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                          },
                        )

                    ),

                        SizedBox(
                          height: 30,
                        ),

                        InkWell(child: Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Container(
                            height: 70,
                            width: 120,
                            decoration: BoxDecoration(
                              color:  Color(0xff41BBC7),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text( '+',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight.bold))),
                          ),
                        ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanScreen()));
                          },
                        )


              ]
          )
    ]
    )

      );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }


}
