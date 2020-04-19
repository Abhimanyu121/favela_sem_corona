import 'package:favelasemcorona/screens/disk_covid_screen.dart';
import 'package:favelasemcorona/screens/disk_domestic_violence_screen.dart';
import 'package:favelasemcorona/screens/iml_screen.dart';
import 'package:favelasemcorona/screens/menu_icons_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UsefulInfoScreen extends StatelessWidget {
  static const String id = "useful_info_screen";

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
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-esq.png'),
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-esq.png'),
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-dir.png'),
                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/corona-esq.png'),
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
                            child: Container(child: Image.network
                              ('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/logo.png',
                              width: 150, height: 150,)),
                            tag: 'logo-favelasemcorona'
                        ),
                      ),
                      SizedBox(height: 30),
                      //TODO: "disk saude, disk denuncia, apoio psicologico"
                      MenuItem(Icons.local_hospital, "DISQUE SAÚDE / SAMU",
                              () => {Navigator.pushNamed(context, DiskCovidScreen.id)}),
                      MenuItem(Icons.record_voice_over, "DISQUE DENÚNCIA",
                              () => {Navigator.pushNamed(context, DiskDomesticViolenceScreen.id)}),
                      //Tel 180 -
                      MenuItem(Icons.supervised_user_circle, "APOIO PSICOLÓGICO",
                              () => {Navigator.pushNamed(context, IMLScreen.id)}),
                      //CVV >> atendimento 24h (site , chat, tel: 188) - A
                      // chave da questao, online
                      MenuItem(Icons.filter_hdr, "ASSISTÊNCIA FUNERÁRIA",
                              () => {Navigator.pushNamed(context, IMLScreen.id)}),
                      SizedBox(height: 30),

                      MenuItem(Icons.subway, "MENU INICIAL",
                              () => {Navigator.pop(context)}),

                      Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/stickers_fsc03.gif', width: 300)
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
