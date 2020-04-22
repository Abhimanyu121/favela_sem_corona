import 'package:dio/dio.dart';
import 'package:favelasemcorona/components/dharma_button.dart';
import 'package:favelasemcorona/screens/main_menu_screen.dart';
import 'package:favelasemcorona/utils/api_helper.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  void funcaox() async {
    var res = await ApiHelper.getRequest(context, "https://services1.arcgis.com/OlP4dGNtIcnD3RYf/arcgis/rest/services/Casos_bairros_2/FeatureServer/0/query?f=json&where=Confirmados%20%3C%3E%200&returnGeometry=true&spatialRel=esriSpatialRelIntersects&maxAllowableOffset=152&geometry=%7B%22xmin%22%3A-4852834.0517760515%2C%22ymin%22%3A-2661231.576766394%2C%22xmax%22%3A-4774562.534812067%2C%22ymax%22%3A-2582960.0598024093%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%2C%22latestWkid%22%3A3857%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile");
//    print(res[1]['title']);

  print(res['features'][54]);
//    https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/favelas.json
  }

  @override
  Widget build(BuildContext context) {

    funcaox();

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () => {Navigator.pushNamed(context, 'menu_icons_screen')},
            icon: Icon(
              Icons.list,
              color: Colors.black,
              size: 40.0,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: MediaQuery.of(context).size.height*0.2),
              Hero(
                child: Container(child: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/logo.png'),
                  height:MediaQuery.of(context).size.height*0.35,),
                tag: 'logo-favelasemcorona',
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.06),
              DharmaButton(
                titleOfButton: 'Entrar',
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, MenuIconsScreen.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
