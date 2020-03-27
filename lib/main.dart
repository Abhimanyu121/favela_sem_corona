import 'package:favelasemcorona/screens/ice_cream_shop_screen.dart';
import 'package:favelasemcorona/screens/map_screen_2.dart';
import 'package:favelasemcorona/screens/menu_screen.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';
import 'package:favelasemcorona/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FavelaSemCorona());

class FavelaSemCorona extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MenuScreen.id: (context) => MenuScreen(),
        MapScreen.id: (context) => MapScreen(),
        IceCreamScreen.id: (context) => IceCreamScreen(),
        QuizScreen.id: (context) => QuizScreen(),
      },
    );
  }
}
