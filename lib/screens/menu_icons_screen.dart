import 'package:favelasemcorona/screens/arcgis_covid_screen.dart';
import 'package:favelasemcorona/screens/favelas_screen.dart';
import 'package:favelasemcorona/screens/iml_screen.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/min_saude_screen.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';
import 'package:favelasemcorona/screens/social_media_screen.dart';
import 'package:favelasemcorona/screens/webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuIconsScreen extends StatelessWidget {
  static const String id = "menu_icons_screen";

  Widget MenuItem(IconData icon, String text, Function pressed) {
    return FlatButton(
      onPressed: pressed,
      child: Row(
        children: <Widget>[
          SizedBox(width: 40),
          Icon(icon, color: Colors.grey),
          SizedBox(width: 10),
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
      home: SafeArea(
        child: Scaffold(
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
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Hero(
                          child: Container(child: Image.asset('images/logo.png', width: 100, height: 120,)),
                          tag: 'logo-favelasemcorona'
                        ),
                      ),
                      SizedBox(height: 5),
                      MenuItem(Icons.dashboard, "PAINEL RIO COVID19",
                          () => Navigator.pushReplacementNamed(context, PainelCovidRioScreen.id)),
                      MenuItem(Icons.local_hospital, "HOSPITAIS E UPAS",
                          () => Navigator.pushReplacementNamed(context, MapsDemo.id)),
                      MenuItem(Icons.flash_on, "PRINCIPAIS DÚVIDAS",
                          () => Navigator.pushReplacementNamed(context, MinSaudeScreen.id)),
                      MenuItem(Icons.filter_hdr, "ASSISTÊNCIA FUNERÁRIA",
                          () => Navigator.pushReplacementNamed(context, IMLScreen.id)),
                      MenuItem(Icons.directions_run, "SUA COMUNIDADE",
                          () => Navigator.pushReplacementNamed(context, FavelasScreen.id)),
                      MenuItem(Icons.pan_tool, "STOP COVID19",
                          () => Navigator.pushReplacementNamed(context, QuizScreen.id)),
                      MenuItem(Icons.touch_app, "NOSSAS MÍDIAS SOCIAIS",
                          () => Navigator.pushReplacementNamed(context, InstagramScreen.id)),
                      MenuItem(Icons.airline_seat_flat_angled, "testestesteste",
                              () => Navigator.pushReplacementNamed(context, TestsWebView.id)),
                      Image.asset('images/stickers_fsc05.gif', width: 200)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
