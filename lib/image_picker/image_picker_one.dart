import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ImagePickerOne extends StatefulWidget {
  const ImagePickerOne({Key? key}) : super(key: key);

  @override
  State<ImagePickerOne> createState() => _ImagePickerOneState();
}

class _ImagePickerOneState extends State<ImagePickerOne> {
  late VideoPlayerController _videoPlayerController;
  final ImagePicker picker = ImagePicker();
  XFile? pickImage;
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  File? image;

  _pickVideo() async {
    final video = await picker.getVideo(
      source: ImageSource.gallery,
    );
    var video0 = File(video!.path);
    _videoPlayerController = VideoPlayerController.file(video0)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    var video;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Image Picker"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
              ElevatedButton(
                onPressed: () async {
                  PickedFile? pickedFile = await ImagePicker().getImage(
                    source: ImageSource.camera,
                    maxWidth: 1800,
                    maxHeight: 1800,
                  );
                  if (pickedFile != null) {
                    setState(() {
                      image = File(pickedFile.path);
                    });
                    debugPrint("Pick image -------->> ${pickImage!.path}");
                    debugPrint("Pick image name -------->> ${pickImage!.name}");
                  }
                },
                child: Text("Click On Camera"),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imageFileList!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.file(
                        File(imageFileList![index].path),
                        fit: BoxFit.cover,
                      );
                    }),
              ),
              if (video != null)
                _videoPlayerController.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(_videoPlayerController),
                      )
                    : Container()
              else
                Text("please on pick video to select video "),
              ElevatedButton(
                onPressed: () {
                  _pickVideo();
                },
                child: Text("Click for video"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
