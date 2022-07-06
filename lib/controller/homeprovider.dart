// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomeProvider extends ChangeNotifier {
  File? file;

  void imagePick() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    file = image != null ? File(image.path) : null;
    notifyListeners();
  }

  void removeImage() async {
    file = null;
    notifyListeners();
  }
}
