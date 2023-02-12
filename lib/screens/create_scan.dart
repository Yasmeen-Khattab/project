import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateScan extends StatefulWidget {
  CreateScan({Key? key}) : super(key: key);

  @override
  State<CreateScan> createState() => _CreateScanState();
}

class _CreateScanState extends State<CreateScan> {
  var qrstr = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BarcodeWidget(
              data: qrstr,
              barcode: Barcode.qrCode(),
              color: Colors.blue,
              height: 250,
              width: 250,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .8,
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    qrstr = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
            )
          ]),
    );
  }
}
