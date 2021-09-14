import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{

  File? _image;

  ImagePicker picker = ImagePicker();

 Future<void> imgFromCamera() async {
    await picker
        .pickImage(
        source: ImageSource.camera,
        maxHeight: 400,
        maxWidth: 300,
        imageQuality: 50)
        .then((value) {
      _image = File(value!.path);
    });
  }
}