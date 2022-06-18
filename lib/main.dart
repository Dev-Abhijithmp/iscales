import 'package:flutter/material.dart';
import 'package:iscales/screens/homepage.dart';
import 'package:iscales/screens/loginpage.dart';
import 'package:iscales/screens/spalshscreen.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginPage(),
    initialRoute: '/',
    routes: {
      'splashscreen': (context) => const SplashScreen(),
      '/homepage': (BuildContext context) => const HomePage(),
    },
  ));
}
