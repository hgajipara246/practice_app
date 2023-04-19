// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';
//
// class ImagePickerTwo extends StatefulWidget {
//   const ImagePickerTwo({Key? key}) : super(key: key);
//
//   @override
//   State<ImagePickerTwo> createState() => _ImagePickerTwoState();
// }
//
// class _ImagePickerTwoState extends State<ImagePickerTwo> {
//   late File _cameraVideo;
//   late File _video;
//   late final  File pickVideo;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           "Video Picker",
//           style: TextStyle(
//             backgroundColor: Colors.transparent,
//             fontSize: 20,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             ElevatedButton(
//                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
//                 child: const Text('Select video from Gallery and Camera'),
//                 onPressed: () async {
//                   XFile? video = await ImagePicker.pickVideo(source: ImageSource.gallery);
//                   var _video = video as File;
//                   var _videoPlayerController = VideoPlayerController.file(_video)
//                     ..initialize().then((_) {
//                       setState(() {});
//                       _videoPlayerController.play();
//                     });
//                 }),
//             ElevatedButton(
//                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
//                 child: const Text('Select video from Gallery and Camera'),
//                 onPressed: _pickVideoFromCamera() async {
//     XFile? video = await ImagePicker.pickVideo(source: ImageSource.camera);
//     _cameraVideo = video as File;
//     var _cameraVideoPlayerController = VideoPlayerController.file(_cameraVideo)..initialize().then((_) {
//     setState(() { });
//     _cameraVideoPlayerController.play();
//     });
//
//     },
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
