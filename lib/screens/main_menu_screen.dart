import 'package:favelasemcorona/screens/arcgis_covid_screen.dart';
import 'package:favelasemcorona/screens/facebook_screen.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/min_saude_screen.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';
import 'package:favelasemcorona/screens/instagram_screen.dart';
import 'package:favelasemcorona/screens/useful_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favelasemcorona/components/menu_item_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuIconsScreen extends StatelessWidget {
  static const String id = "menu_icons_screen";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                 // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-esq.png'),
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-esq.png'),
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-esq.png'),
                    Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Hero(
                          child: Container(child: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/logo.png', width: 180, height: 180,)),
                          tag: 'logo-favelasemcorona'
                        ),
                      ),
                      SizedBox(height: 25),
                      MenuItem(icon: FontAwesomeIcons.chartLine,
                        iconText: 'PAINEL RIO COVID19',
                        onPressed: () => Navigator.pushNamed(context,
                            PainelCovidRioScreen.id),),
                      MenuItem(icon: FontAwesomeIcons.hospital,
                        iconText: 'HOSPITAIS E UPAs',
                        onPressed: () => Navigator.pushNamed(context,
                            MapsDemo.id),),
                      MenuItem(icon: FontAwesomeIcons.handsWash,
                        iconText: 'SOBRE O VÍRUS',
                        onPressed: () => Navigator.pushNamed(context,
                            MinSaudeScreen.id),),
                      MenuItem(icon: FontAwesomeIcons.ambulance,
                        iconText: 'ASSISTÊNCIA',
                        onPressed: () => Navigator.pushNamed(context,
                            UsefulInfoScreen.id),),
                      MenuItem(icon: FontAwesomeIcons.gamepad,
                        iconText: 'STOP COVID-19',
                        onPressed: () => Navigator.pushNamed(context,
                            QuizScreen.id),),
                      MenuItem(icon: FontAwesomeIcons.instagramSquare,
                        iconText: 'INSTAGRAM',
                        onPressed: () => Navigator.pushNamed(context,
                            InstagramScreen.id),),
                      MenuItem(icon: FontAwesomeIcons.facebookSquare,
                        iconText: 'FACEBOOK',
                        onPressed: () => Navigator.pushNamed(context,
                            FacebookScreen.id),),
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/stickers_fsc04.gif', width: 240)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

