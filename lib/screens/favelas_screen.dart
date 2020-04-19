import 'package:favelasemcorona/components/scroll_view.dart';
import 'package:favelasemcorona/screens/entrepreneurs_screen.dart';
import 'package:favelasemcorona/screens/posto_de_saude_screen.dart';
import 'package:favelasemcorona/utils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:favelasemcorona/models/favelas.dart';
import 'package:favelasemcorona/screens/menu_icons_screen.dart';


class FavelasScreen extends StatefulWidget {
  static const String id = "favelas_screen";

  FavelasScreen({this.favela});
  final Favela favela;

  @override
  _FavelasScreenState createState() => _FavelasScreenState();
}

class _FavelasScreenState extends State<FavelasScreen> {
String imageUrl;
String communityName;
int population;
int residences;
int totalCases;
int activeCases;
int  recoveredCases;
int deaths;
String description;
bool isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    funcaox();


  }
  void funcaox() async {
    setState(() {
      isloading = true;
    });
    var favela = 'ANDARAI';
    var res = await ApiHelper.getRequest(context, "https://services1.arcgis.com/OlP4dGNtIcnD3RYf/arcgis/rest/services/Casos_bairros_2/FeatureServer/0/query?f=json&where=Confirmados%20%3C%3E%200&returnGeometry=true&spatialRel=esriSpatialRelIntersects&maxAllowableOffset=152&geometry=%7B%22xmin%22%3A-4852834.0517760515%2C%22ymin%22%3A-2661231.576766394%2C%22xmax%22%3A-4774562.534812067%2C%22ymax%22%3A-2582960.0598024093%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%2C%22latestWkid%22%3A3857%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile");
//    print(res['features'][54]);

    var result = await ApiHelper.getRequest(context, "https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/favelas.json");
//    print(res['features'][54]);

    int i = 0;
    while(i < res['features'].length){
      if(res['features'][i]['attributes']['Bairro'] == favela){
        setState(() {
          communityName = res['features'][i]['attributes']['Bairro'];
          totalCases = res['features'][i]['attributes']['Confirmados'];
          deaths = res['features'][i]['attributes']['Óbitos'];
          imageUrl = result.where((f) => f['title'].toLowerCase() ==
              favela.toLowerCase()).toList
            ()[0]['img'];
          population = favelas.where((f) => f.communityName.toLowerCase() == favela.toLowerCase()).toList()[0].population;
          residences = favelas.where((f) => f.communityName.toLowerCase() ==
              favela.toLowerCase()).toList()[0].residences;
          description = favelas.where((f) => f.communityName.toLowerCase() ==
              favela.toLowerCase()).toList()[0].description;
        });
        break;
      }
      i++;
    }
    setState(() {
      isloading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (isloading) ? Center(
        child: CircularProgressIndicator(),
      ): Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0,
                  2), blurRadius: 6)]),
              //TODO: Add HERO widget here
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(image: NetworkImage(imageUrl),
                fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
//                  IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,
//                      size: 30.0), onPressed: () => Navigator.pushReplacementNamed(context, MenuIconsScreen.id)),
                ],),
            ),
          ],
          ),
          Container(height: 80,
            child: Column(
              children: <Widget>[
                Text(communityName, style: TextStyle(
                    fontFamily: 'MontserratAlternates',
                    fontSize: 30,
                    fontWeight: FontWeight.w600),),
                Text('${population} moradores', style: TextStyle(
                  fontFamily: 'MontserratAlternates',
                  fontSize: 16)),
                Text('${residences} residências', style: TextStyle(
                    fontFamily: 'MontserratAlternates',
                    fontSize: 16)),
              ],
            ),
          ),
          Container(height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/virus1.png',
                       )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('${totalCases} Total de Casos', style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('${activeCases} Casos Ativos', style:
                    TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14)),
                    Text('${recoveredCases} Casos Recuperados', style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14)),
                    Text('${deaths} Mortes', style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14)),
                  ],
                ),

              ],
            ),
          ),
          Container(height: 230,
            child: MyScrollView(
              longText: description,
              color1: Colors.grey.shade300,
              color2: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/doctor.png'),
                iconSize: 120,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, PostoDeSaudeScreen.id);
                },
              ),
              IconButton(
                icon: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/mask.png'),
                iconSize: 120,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, EntrepreneursScreen.id);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}


//                this.activeCases,
//                this.recoveredCases,
//                this.deaths,
//                this.postosdesaude,
//                this.favelaResident,