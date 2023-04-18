// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:panorama/panorama.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:panpanpan/secondScreen/second_screen.dart';
// import 'dart:math' as math;

// class FourthScreen extends StatefulWidget {
//   FourthScreen({Key? key, this.title}) : super(key: key);

//   final String? title;

//   @override
//   _FourthScreenState createState() => _FourthScreenState();
// }

// class _FourthScreenState extends State<FourthScreen> {
//   double _lon = 0;
//   double _lat = 0;
//   double _tilt = 0;
//   int _panoId = 0;
//   List<Image> panoImages = [
//     Image.asset('assets/converted/tenten.jpg'),
//     Image.asset('assets/converted/ninenine.jpg'),
//     Image.asset('assets/converted/threethree.jpg'),
//   ];
//   ImagePicker picker = ImagePicker();

//   void onViewChanged(longitude, latitude, tilt) {
//     setState(() {
//       _lon = longitude;
//       _lat = latitude;
//       _tilt = tilt;
//     });
//   }

//   Widget hotspotButton(
//       {String? text, IconData? icon, VoidCallback? onPressed}) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         TextButton(
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all(CircleBorder()),
//             backgroundColor: MaterialStateProperty.all(Colors.black38),
//             foregroundColor: MaterialStateProperty.all(Colors.white),
//           ),
//           child: Icon(icon),
//           onPressed: onPressed,
//         ),
//         text != null
//             ? Container(
//                 padding: const EdgeInsets.all(4.0),
//                 decoration: const BoxDecoration(
//                     color: Colors.black38,
//                     borderRadius: BorderRadius.all(Radius.circular(4))),
//                 child: Center(child: Text(text)),
//               )
//             : Container(),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget panorama;
//     switch (_panoId % panoImages.length) {
//       case 0:
//         panorama = Panorama(
//           animSpeed: 0.01,
//           sensitivity: 2,
//           sensorControl: SensorControl.Orientation,
//           onViewChanged: onViewChanged,
//           onTap: (longitude, latitude, tilt) =>
//               print('onTap: $longitude, $latitude, $tilt'),
//           onLongPressStart: (longitude, latitude, tilt) =>
//               print('onLongPressStart: $longitude, $latitude, $tilt'),
//           onLongPressMoveUpdate: (longitude, latitude, tilt) =>
//               print('onLongPressMoveUpdate: $longitude, $latitude, $tilt'),
//           onLongPressEnd: (longitude, latitude, tilt) =>
//               print('onLongPressEnd: $longitude, $latitude, $tilt'),
//           child: Image.asset('assets/converted/fourfour.jpg'),
//           hotspots: [
//             Hotspot(
//               latitude: -23.0,
//               longitude: -178.0,
//               width: 60.0,
//               height: 60.0,
//               widget: Transform.rotate(
//                 angle: 15 * math.pi / 180,
//                 child: hotspotButton(
//                   icon: Icons.arrow_upward,
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return SecondScreen();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         );
//         break;
//       case 2:
//         panorama = Panorama(
//           animSpeed: 0.01,
//           sensorControl: SensorControl.Orientation,
//           onViewChanged: onViewChanged,
//           croppedArea: const Rect.fromLTWH(2533.0, 1265.0, 5065.0, 2533.0),
//           croppedFullWidth: 10132.0,
//           croppedFullHeight: 5066.0,
//           child: Image.asset('assets/converted/sixsix.jpg'),
//           hotspots: [
//             Hotspot(
//               latitude: 0.0,
//               longitude: -46.0,
//               width: 90.0,
//               height: 75.0,
//               widget: hotspotButton(
//                   text: "Next scene",
//                   icon: Icons.double_arrow,
//                   onPressed: () => setState(() => _panoId++)),
//             ),
//           ],
//         );
//         break;
//       default:
//         panorama = Panorama(
//           animSpeed: 0.01,
//           sensorControl: SensorControl.Orientation,
//           onViewChanged: onViewChanged,
//           child: panoImages[_panoId % panoImages.length],
//           hotspots: [
//             Hotspot(
//               latitude: 0.0,
//               longitude: 160.0,
//               width: 90.0,
//               height: 75.0,
//               widget: hotspotButton(
//                   text: "Next scene",
//                   icon: Icons.double_arrow,
//                   onPressed: () => setState(() => _panoId++)),
//             ),
//           ],
//         );
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("tyvbhuinj"),
//       ),
//       body: Stack(
//         children: [
//           panorama,
//           Text(
//               '${_lon.toStringAsFixed(3)}, ${_lat.toStringAsFixed(3)}, ${_tilt.toStringAsFixed(3)}'),
//         ],
//       ),
//     );
//   }
// }
