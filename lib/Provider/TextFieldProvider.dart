import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  bool isObsecure = true;
  bool isObsecure2 = true;
  bool isCheck = true;

  // obsecure method
  void isObsecureMethod() {
    isObsecure = !isObsecure;
    notifyListeners();
  }
  void isObsecureMethod2() {
    isObsecure2 = !isObsecure2;
    notifyListeners();
  }

  // checkbox method
  void isChecked(value) {
    isCheck = value;
    notifyListeners();
  }
}
