import 'package:favelasemcorona/screens/arcgis_covid_screen.dart';
import 'package:favelasemcorona/screens/iml_screen.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/menu_screen.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';
import 'package:favelasemcorona/screens/welcome_screen.dart';
import 'package:favelasemcorona/screens/wikipedia_reader_screen.dart';
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
        QuizScreen.id: (context) => QuizScreen(),
        WikipediaExplorer.id: (context) => WikipediaExplorer(),
        MapsDemo.id: (context) => MapsDemo(),
        PainelCovidRioScreen.id: (context) => PainelCovidRioScreen(),
        IMLScreen.id: (context) => IMLScreen(),
      },
    );
  }
}
