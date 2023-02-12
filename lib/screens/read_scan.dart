

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ReadScan extends StatefulWidget {
  const ReadScan({Key? key}) : super(key: key);

  @override
  State<ReadScan> createState() => _ReadScanState();
}

class _ReadScanState extends State<ReadScan> {

  var qrstr = 'Scan it';
  var height, width;

  @override
  Widget build(BuildContext context) {
    // height=MediaQuery.of(context).size.height;
    // width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children:[ Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            //  Image.asset('images/splach 1.png',height: 200,),
              Text(
                qrstr,
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              ElevatedButton(

                  onPressed: () {
                    scanQr();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(0xff41BBC7)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.all(12)),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 16))),
                  child: Text('Capture Image with camera')),
           //  ElevatedButton(onPressed:scanQr , child: Text('scanner')),
          SizedBox(width: height,)
            ]),
    ]
      ),
    );
  }


Future<void>scanQr()async{
    try{
     FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR).then((value) {
       setState(() {
         qrstr=value;
       });
     });

    } catch(e){
      setState(() {
        qrstr='unable to read this';
      });
    }
}
}
