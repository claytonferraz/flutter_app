import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = new AppController();

  bool isDarkTheme = false;

  changeTheme() {
    // muda o valor da variável
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    print('mudou tema');
  }
}
