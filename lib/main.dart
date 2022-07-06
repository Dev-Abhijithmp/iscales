import 'package:flutter/material.dart';
import 'package:iscales/controller/homeprovider.dart';
import 'package:iscales/controller/logprov.dart';
import 'package:iscales/screens/homepage.dart';
import 'package:iscales/screens/loginpage.dart';
import 'package:iscales/screens/spalshscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginProvider()),
      ChangeNotifierProvider(create: (_) => HomeProvider())
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const SplashScreen(),
      'login': (context) => const LoginPage(),
      'home': (context) => const HomePage(),
    });
  }
}
