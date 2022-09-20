import 'package:flutter_app/app/controller/app.dart';
import 'package:flutter/material.dart';

class ThemeDataApp extends MaterialApp {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 44, 161, 49),
        brightness: AppController.instance.isDarkTheme
            ? Brightness.dark
            : Brightness.light,
      ),
    );
  }
}
