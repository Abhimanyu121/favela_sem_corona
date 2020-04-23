import 'package:favelasemcorona/components/counter.dart';
import 'package:flutter/material.dart';
import 'package:favelasemcorona/components/curly_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:favelasemcorona/models/favelas.dart';
import 'package:favelasemcorona/utils/api_helper.dart';

class TestTestScreen extends StatefulWidget {
  static const id = 'test_test_screen';

  TestTestScreen({this.favela});
  final Favela favela;

  @override
  _TestTestScreenState createState() => _TestTestScreenState();
}

class _TestTestScreenState extends State<TestTestScreen> {

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
    controller.addListener(onScroll);
  }

  void funcaox() async {
    setState(() {
      isloading = true;
    });
    var favela = 'ROCINHA';
    var res = await ApiHelper.getRequest(context, "https://services1.arcgis.com/OlP4dGNtIcnD3RYf/arcgis/rest/services/Casos_bairros_2/FeatureServer/0/query?f=json&where=Confirmados%20%3C%3E%200&returnGeometry=true&spatialRel=esriSpatialRelIntersects&maxAllowableOffset=152&geometry=%7B%22xmin%22%3A-4852834.0517760515%2C%22ymin%22%3A-2661231.576766394%2C%22xmax%22%3A-4774562.534812067%2C%22ymax%22%3A-2582960.0598024093%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%2C%22latestWkid%22%3A3857%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile");
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


  final controller = ScrollController();
  double offset = 0;



//  void initState(){
//    super.initState();
//    controller.addListener(onScroll);
//  }

  void dispose(){
    controller.dispose();
    super.dispose();
  }

  void onScroll(){
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CurlyHeader(
              image: imageUrl,
              offset: offset,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.mapPin),
                  SizedBox(width: 20),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      icon: Icon(FontAwesomeIcons.arrowAltCircleDown),
                      value: "Rocinha",
                      items: [
                        'Rocinha',
                        'Complexo da Maré',
                        'Barreira do Vasco',
                        'Vila Kennedy'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                    ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Casos por bairro\n",
                              style: TextStyle(fontSize: 18, color: Color
                                (0xFF303030), fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "Atualizado em: 21/04",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Mais detalhes",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Counter(
                          color: Color(0xFFFF8748),
                          number: totalCases,
                          title: "Infectados",
                        ),
                        Counter(
                          color: Color(0xFFFF4848),
                          number: deaths,
                          title: "Mortes",
                        ),
                        Counter(
                          color: Color(0xFF36C12C),
                          number: 0,
                          title: "Recuperados",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Covid19 por bairro",
                        style: TextStyle(fontSize: 18, color: Color
                          (0xFF303030), fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mais detalhes",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(8),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black87,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'images/mapRio.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
      ),
    ),
    );
  }
}
