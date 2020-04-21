import 'package:favelasemcorona/components/dharma_button.dart';
import 'package:favelasemcorona/components/dharma_card.dart';
import 'package:favelasemcorona/screens/arcgis_covid_screen.dart';
import 'package:favelasemcorona/screens/iml_screen.dart';
import 'package:favelasemcorona/screens/min_saude_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favelasemcorona/screens/map_demo.dart';
import 'package:favelasemcorona/screens/quiz_screen.dart';

class MenuScreen extends StatefulWidget {
  static const String id = 'menu_screen';


  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[Colors.black, Colors.black],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => {Navigator.pop(context)},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
//                      DharmaButton(
//                        titleOfButton: 'Mapa',
//                        onPressed: () {
//                          Navigator.pushNamed(context, MapScreen.id);
//                        },
//                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            DharmaCard(titleOfButton: 'Jogo', onPressed: (){Navigator.pushNamed(context, QuizScreen.id);},),
                            DharmaCard(titleOfButton: 'Ministério da Saúde', onPressed: (){Navigator.pushNamed(context, MinSaudeScreen.id);},),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            DharmaCard(titleOfButton: 'Painel COVID-19 Rio', onPressed: (){Navigator.pushNamed(context, PainelCovidRioScreen.id);},),
                            DharmaCard(titleOfButton: 'IML', onPressed: (){Navigator.pushNamed(context, IMLScreen.id);},),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            DharmaCard(titleOfButton: 'Apoio Psicológico', onPressed: (){Navigator.pop(context);},),
                            DharmaCard(titleOfButton: 'Empresários da Comunidade', onPressed: (){Navigator.pop(context);},),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      DharmaButton(
                        titleOfButton: 'Google Map Demo',
                        onPressed: (){
                          Navigator.pushNamed(context, MapsDemo.id);
                        },
                      ),
                      SizedBox(height: 50,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
