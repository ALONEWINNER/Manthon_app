// import 'dart:io';
// import 'package:clipboard/clipboard.dart';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// import 'details.dart';

 

// class   TextRecognotion  extends StatefulWidget {
//   @override
//   _TextRecognotionState createState() => _TextRecognotionState();
// }

// class _TextRecognotionState extends State<TextRecognotion> {
//   String _text = '';
//   PickedFile _image;
//   final picker = ImagePicker();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Text Recognition'),
//           actions: [
//             // ignore: deprecated_member_use
//             FlatButton(
//               onPressed: scanText,
//               child: Text(
//                 'Scan',
//                 style: TextStyle(color: Colors.white),
//               ),
//             )
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: getImage,
//           child: Icon(Icons.add_a_photo),
//         ),
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           child: _image != null
//               ? Image.file(
//                   File(_image.path),
//                   fit: BoxFit.fitWidth,
//                 )
//               : Container(),
//         ));
//   }

//   Future scanText() async {
//     // ignore: missing_required_param
//     // showDialog(
//     //     builder: (context) => Center(
//     //           child: CircularProgressIndicator(),
//     //         ),
//     //     context: context);
//     final FirebaseVisionImage visionImage =
//         FirebaseVisionImage.fromFile(File(_image.path));
//     final TextRecognizer textRecognizer =
//         FirebaseVision.instance.textRecognizer();
//     final VisionText visionText =
//         await textRecognizer.processImage(visionImage);

//     for (TextBlock block in visionText.blocks) {
//       for (TextLine line in block.lines) {
//         _text += line.text + '\n';
//       }
//     }

//     Navigator.of(context).pop();
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (context) => Details(_text)));
//   }

//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.camera);
//     setState(() {
//       if (pickedFile != null) {
//         _image = pickedFile;
//       } else {
//         print('No image selected');
//       }
//     });
//   }
// }

// Second page
// 
// Second page
//
//// Second page

// import 'package:clipboard/clipboard.dart';
// import 'package:flutter/material.dart';

// class Details extends StatefulWidget {
//   final String text;
//   Details(this.text);
//   @override
//   _DetailsState createState() => _DetailsState();
// }

// class _DetailsState extends State<Details> {
//   final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _key,
//       appBar: AppBar(
//         title: Text('Details'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.copy),
//             onPressed: () {
//               FlutterClipboard.copy(widget.text)
//                   .then((value) => _key.currentState
//                       // ignore: deprecated_member_use
//                       .showSnackBar(new SnackBar(content: Text('Copied'))));
//             },
//           )
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.all(8),
//         alignment: Alignment.center,
//         height: double.infinity,
//         width: double.infinity,
//         child: SelectableText(
//             widget.text.isEmpty ? 'No Text Available' : widget.text),
//       ),
//     );
//   }
// }





