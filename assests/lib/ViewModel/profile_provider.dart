import 'dart:io';

import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  File? _image;
  String _username = '';

  File? get image => _image;

  String get username => _username;

  void setImage(File? image) {
    _image = image;
    notifyListeners();
  }

  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }
}