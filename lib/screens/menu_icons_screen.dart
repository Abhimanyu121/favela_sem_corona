import 'package:favelasemcorona/screens/arcgis_covid_screen.dart';
import 'package:favelasemcorona/screens/entrepreneurs_screen.dart';
import 'package:favelasemcorona/screens/favelas_screen.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/min_saude_screen.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';
import 'package:favelasemcorona/screens/social_media_screen.dart';
import 'package:favelasemcorona/screens/useful_info_screen.dart';
//import 'package:favelasemcorona/screens/webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuIconsScreen extends StatelessWidget {
  static const String id = "menu_icons_screen";

  Widget MenuItem(IconData icon, String text, Function pressed) {
    return FlatButton(
      onPressed: pressed,
      child: Row(
        children: <Widget>[
          SizedBox(width: 40),
          Icon(icon, color: Colors.grey),
          SizedBox(width: 20),
          Text(text)
        ],
      ),
    );
  }

  Widget line() {
    return SizedBox(
      height: 1,
      width: 300,
      child: Divider(
        color: Colors.grey.shade400,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MontserratAlternates' ),
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset('images/corona-dir.png'),
                    Image.asset('images/corona-esq.png'),
                    Image.asset('images/corona-dir.png'),
                    Image.asset('images/corona-esq.png'),
                    Image.asset('images/corona-dir.png'),
                    Image.asset('images/corona-esq.png'),
                    Image.asset('images/corona-dir.png'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Hero(
                        child: Container(child: Image.asset('images/logo'
                            '.png', width: 180, height: 180,)),
                        tag: 'logo-favelasemcorona'
                      ),
                    ),
                    SizedBox(height: 5),
                    MenuItem(FontAwesomeIcons.chartLine, "PAINEL RIO COVID19",
                        () => Navigator.pushReplacementNamed(context, PainelCovidRioScreen.id)),
                    MenuItem(FontAwesomeIcons.hospital, "HOSPITAIS E UPAS",
                        () => Navigator.pushReplacementNamed(context, MapsDemo.id)),
                    MenuItem(FontAwesomeIcons.handsWash, "PRINCIPAIS DÚVIDAS",
                        () => Navigator.pushReplacementNamed(context, MinSaudeScreen.id)),
                    MenuItem(FontAwesomeIcons.ambulance, "ASSISTÊNCIA",
                        () => Navigator.pushReplacementNamed(context, UsefulInfoScreen.id)),
                    MenuItem(FontAwesomeIcons.peopleCarry, "SUA COMUNIDADE",
                        () => Navigator.pushReplacementNamed(context, EntrepreneursScreen.id)),
                    MenuItem(FontAwesomeIcons.gamepad, "STOP COVID19",
                        () => Navigator.pushReplacementNamed(context, QuizScreen.id)),
                    MenuItem(FontAwesomeIcons.instagramSquare, "NOSSAS MÍDIAS "
                        "SOCIAIS",
                        () => Navigator.pushReplacementNamed(context, InstagramScreen.id)),
                    MenuItem(FontAwesomeIcons.appStore, "Testing Screen",
                            () => Navigator.pushReplacementNamed(context, FavelasScreen.id)),
                    Image.asset('images/stickers_fsc04.gif', width: 240)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
