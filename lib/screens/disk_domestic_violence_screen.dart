import 'package:favelasemcorona/components/dharma_button.dart';
import 'package:favelasemcorona/components/grey_line.dart';
import 'package:favelasemcorona/components/scroll_view.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/useful_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiskDomesticViolenceScreen extends StatelessWidget {
  static const String id = "disk_denuncia_screen";

  //https://www.saude.gov.br/saude-de-a-z/servico-de-atendimento-movel-de-urgencia-samu-192

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
                      IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,
                          size: 30.0), onPressed: () => Navigator
                          .pushReplacementNamed(context, UsefulInfoScreen.id)),
                      Image.asset('images/corona-dir.png'),
                      Image.asset('images/corona-esq.png'),
                      Image.asset('images/corona-dir.png'),
                      Image.asset('images/corona-esq.png'),
                      Image.asset('images/corona-dir.png'),
                      Image.asset('images/corona-esq.png'),
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
                        child: Container(child: Image.asset
                          ('images/denuncie-180.png', width: 200, height:
                        200,)),
                      ),
                      Text("Disk Denuncia - 180", style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700),),
                      MyScrollView(
                        longText: '',
                        color1: Colors.transparent,
                        color2: Colors.transparent,),
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