import 'package:flutter/material.dart';
import 'package:flutter_app/app/controller/app.dart';
import 'package:flutter_app/app/components/theme_data.dart';
import 'package:flutter_app/app/pages/home.dart';
import 'package:flutter_app/app/pages/login.dart';
import 'package:flutter_app/app/pages/perfil.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color.fromARGB(255, 44, 161, 49),
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: "/",
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/perfil': (context) => PerfilPage(),
          },
        );
      },
    );
  }
}
