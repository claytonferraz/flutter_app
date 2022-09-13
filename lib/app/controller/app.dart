import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  static AppController instance = new AppController();

  bool isDarkTheme = false;

  changeTheme() {
    // muda o valor da variável
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    if (kDebugMode) {
      print('mudou tema');
    }
  }
}
