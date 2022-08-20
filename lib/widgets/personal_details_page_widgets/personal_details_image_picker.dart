import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class PersonalDetailsImagePicker extends StatefulWidget {
  final String? topText;
  const PersonalDetailsImagePicker({Key? key, this.topText}) : super(key: key);

  @override
  State<PersonalDetailsImagePicker> createState() =>
      _PersonalDetailsImagePickerState();
}

class _PersonalDetailsImagePickerState
    extends State<PersonalDetailsImagePicker> {
  ImagePicker picker = ImagePicker();
  // ignore: prefer_typing_uninitialized_variables
  var _image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange),
            borderRadius: BorderRadius.circular(5)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.topText != null
                      ? Row(
                          children: [
                            Text(
                              '${widget.topText}:',
                              style: const TextStyle(color: Colors.deepOrange),
                            ),
                            Expanded(
                              child: Container(),
                            )
                          ],
                        )
                      : const SizedBox(),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 200,
                  ),
                  Expanded(
                    child: GestureDetector(
                        child: _image != null
                            ? Image.file(
                                _image,
                                height: 180,
                              )
                            : const SizedBox(
                                height: 200,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrange,
                                  foregroundColor: Colors.white,
                                  child: Icon(Icons.image_rounded),
                                )),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Wrap(
                                children: [
                                  ListTile(
                                    title: const Text("Camera",
                                        style: TextStyle(color: Colors.black)),
                                    onTap: getImageFromCamera,
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "Gallery",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onTap: getImageFromGallery,
                                  ),
                                  ListTile(
                                    title: const Text("Cancel",
                                        style: TextStyle(color: Colors.black)),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }),
                  ),
                  const Text(
                    'Upload Image',
                    style: TextStyle(color: Colors.deepOrange),
                  )
                ]),
            const Divider(height: 10, color: Colors.red),
          ],
        ));
  }

  getImageFromCamera() async {
    Navigator.pop(context);
    var image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
    // if(image!=null){
    //   _image = await _cropImage(image);
    // }
  }

  getImageFromGallery() async {
    Navigator.pop(context);
    var image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
    // if(image!=null){
    //   _image = await _cropImage(image);
    // }
  }

  // ignore: unused_element
  _cropImage(var imageFile) async {
    var cropped = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    return File(cropped?.path ?? '');
  }
}
