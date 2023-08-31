import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  bool isObsecure = true;
  bool isCheck = true;

  // obsecure method
  void isObsecureMethod() {
    isObsecure = !isObsecure;
    notifyListeners();
  }

  // checkbox method
  void isChecked(value) {
    isCheck = value;
    notifyListeners();
  }
}
