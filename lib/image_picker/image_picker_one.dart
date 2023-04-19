import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerOne extends StatefulWidget {
  const ImagePickerOne({Key? key}) : super(key: key);

  @override
  State<ImagePickerOne> createState() => _ImagePickerOneState();
}

class _ImagePickerOneState extends State<ImagePickerOne> {
  final ImagePicker picker = ImagePicker();
  XFile? pickImage;
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Image Picker"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            if (image != null) Image.file(image!),
            ElevatedButton(
              onPressed: () async {
                pickImage = await picker.pickImage(source: ImageSource.camera);
                debugPrint("Pick image -------->> ${pickImage!.path}");
                debugPrint("Pick image name -------->> ${pickImage!.name}");
                image = File(pickImage!.path);
                setState(() {});
              },
              child: Text("Pick The Image"),
            ),
            ElevatedButton(
              onPressed: () async {
                PickedFile? pickedFile = await ImagePicker().getImage(
                  source: ImageSource.gallery,
                  maxWidth: 1800,
                  maxHeight: 1800,
                );
                if (pickedFile != null) {
                  setState(() {
                    image = File(pickedFile.path);
                    setState(() {});
                  });
                }
              },
              child: Text("Pick Image From Gallary"),
            ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: GridView.builder(
            //         itemCount: imageFileList!.length,
            //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            //         itemBuilder: (BuildContext context, int index) {
            //           return Image.file(
            //             File(imageFileList![index].path),
            //             fit: BoxFit.cover,
            //           );
            //         }),
            //   ),
            // ),

            // ElevatedButton(
            //   onPressed: () async {
            //     PickedFile? pickedFile = await ImagePicker().getImage(
            //       source: ImageSource.camera,
            //       maxWidth: 1800,
            //       maxHeight: 1800,
            //     );
            //     if (pickedFile != null) {
            //       setState(() {
            //         image = File(pickedFile.path);
            //       });
            //     }
            //   },
            //   child: Text("Click On Camera"),
            // ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
                if (selectedImages!.isNotEmpty) {
                  imageFileList!.addAll(selectedImages);
                }
                print("Image List Length:" + imageFileList!.length.toString());
                setState(() {});
              },
              child: Text("Select Multiple From Gallery"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: imageFileList!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.file(
                        File(imageFileList![index].path),
                        fit: BoxFit.cover,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.green),
//       home: const MultipleImageSelector(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MultipleImageSelector extends StatefulWidget {
//   const MultipleImageSelector({super.key});

//   @override
//   State<MultipleImageSelector> createState() => _MultipleImageSelectorState();
// }

// class _MultipleImageSelectorState extends State<MultipleImageSelector> {
//   List<File> selectedImages = [];
//   final picker = ImagePicker();
//   @override
//   Widget build(BuildContext context) {
//     // display image selected from gallery
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Multiple Images Select'),
//         backgroundColor: Colors.green,
//         actions: const [],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Colors.green)),
//               child: const Text('Select Image from Gallery and Camera'),
//               onPressed: () {
//                 getImages();
//               },
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 18.0),
//               child: Text(
//                 " ",
//                 textScaleFactor: 3,
//                 style: TextStyle(color: Colors.green),
//               ),
//             ),
//             Expanded(
//               child: SizedBox(
//                 width: 300.0,
//                 child: selectedImages.isEmpty
//                     ? const Center(child: Text('Sorry nothing selected!!'))
//                     : GridView.builder(
//                         itemCount: selectedImages.length,
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3),
//                         itemBuilder: (BuildContext context, int index) {
//                           return Center(
//                               child: kIsWeb
//                                   ? Image.network(selectedImages[index].path)
//                                   : Image.file(selectedImages[index]));
//                         },
//                       ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future getImages() async {
//     final pickedFile = await picker.pickMultiImage(
//         imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
//     List<XFile> xfilePick = pickedFile;

//     setState(
//       () {
//         if (xfilePick.isNotEmpty) {
//           for (var i = 0; i < xfilePick.length; i++) {
//             selectedImages.add(File(xfilePick[i].path));
//           }
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(content: Text('Nothing is selected')));
//         }
//       },
//     );
//   }
// }
