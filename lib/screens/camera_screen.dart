import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? imageFile;

  void _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 1080,
      maxWidth: 1080,
    );
    setState(() {
      imageFile = File(pickedFile!.path);
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9DA99),
      body: ListView(
        children: [
          Column(children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Take a photo',
              style: TextStyle(
                  fontSize: 26.0,
                  color: Color(0xff3E9199),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff76ABA4),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
                  child: Column(
                    children: [
                      imageFile != null
                          ? Container(
                        child: Image.file(imageFile!),
                      )
                          : Container(
                        child: InkWell(
                          child: Icon(
                            Icons.camera_enhance_rounded,
                            color: Color(0xff202F2F),
                            size: MediaQuery.of(context).size.width * .8,
                          ),
                          onTap: () {
                            _getFromCamera();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      ElevatedButton(

                            onPressed: () {
                              _getFromCamera();
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffF9DA99)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(12)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(fontSize: 16))),
                            child: Text('Capture Image with camera')),

                      SizedBox(
                        height: 50,
                      ),

                      Container(
                        height: 100,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color(0xffF9DA99),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0,top: 20),
                          child: Text('Result :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        ),
                      )
                    ],
                  ),


              ),



          ])
        ],
      ),
    );
  }
}
// imageFile !=null?
// Container(
// child: Image.file(imageFile!),
// ):
// Container(
// child: InkWell(
// child: Icon(Icons.camera_enhance_rounded,
// color: Color(0xff202F2F),
// size: MediaQuery.of(context).size.width*.8,
//
// ),
// onTap: (){
// _getFromCamera();
// },
// ),
// ),

//   SizedBox(
//     height: 50,
//   ),
//   imageFile !=null?
//       Container(
//         child: Image.file(imageFile!),
//       ):
//       Container(
//         child: Icon(Icons.camera_enhance_rounded,
//           color: Colors.green,
//           size: MediaQuery.of(context).size.width*.6,
//
//         ),
//       ),
//  Padding(
//    padding: const EdgeInsets.all(30.0),
//    child: ElevatedButton(onPressed: (){
//
//      _getFromCamera();
//    },
//        style: ButtonStyle(
//          backgroundColor: MaterialStateProperty.all(Colors.purple),
//          padding: MaterialStateProperty.all(EdgeInsets.all(12)),
//          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16))
//        ),
//
//        child: Text ('Capture Image with camera')
//    ),
//
