import 'package:favelasemcorona/screens/arcgis_covid_screen.dart';
import 'package:favelasemcorona/screens/disk_covid_screen.dart';
import 'package:favelasemcorona/screens/disk_domestic_violence_screen.dart';
import 'package:favelasemcorona/screens/entrepreneurs_screen.dart';
import 'package:favelasemcorona/screens/favelas_screen.dart';
import 'package:favelasemcorona/screens/iml_screen.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/menu_icons_screen.dart';
import 'package:favelasemcorona/screens/posto_de_saude_screen.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';
import 'package:favelasemcorona/screens/useful_info_screen.dart';
import 'package:favelasemcorona/screens/webview.dart';
import 'package:favelasemcorona/screens/welcome_screen.dart';
import 'package:favelasemcorona/screens/min_saude_screen.dart';
import 'package:favelasemcorona/screens/social_media_screen.dart';
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
        MenuIconsScreen.id: (context) => MenuIconsScreen(),
        QuizScreen.id: (context) => QuizScreen(),
        MinSaudeScreen.id: (context) => MinSaudeScreen(),
        MapsDemo.id: (context) => MapsDemo(),
        PainelCovidRioScreen.id: (context) => PainelCovidRioScreen(),
        IMLScreen.id: (context) => IMLScreen(),
        PostoDeSaudeScreen.id: (context) => PostoDeSaudeScreen(),
        FavelasScreen.id: (context) => FavelasScreen(),
        EntrepreneursScreen.id: (context) => EntrepreneursScreen(),
        InstagramScreen.id: (context) => InstagramScreen(),
        UsefulInfoScreen.id: (context) => UsefulInfoScreen(),
        TestsWebView.id: (context) => TestsWebView(),
        DiskCovidScreen.id: (context) => DiskCovidScreen(),
        DiskDomesticViolenceScreen.id: (context) => DiskDomesticViolenceScreen(),
      },
    );
  }
}
