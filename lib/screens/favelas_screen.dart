import 'package:favelasemcorona/components/scroll_view.dart';
import 'package:favelasemcorona/screens/entrepreneurs_screen.dart';
import 'package:favelasemcorona/screens/posto_de_saude_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                child: Image(image: AssetImage
                  (favelas[0].imageUrl),
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
                Text(favelas[0].communityName, style: TextStyle(
                    fontFamily: 'MontserratAlternates',
                    fontSize: 30,
                    fontWeight: FontWeight.w600),),
                Text('${favelas[0].population} moradores', style: TextStyle(
                  fontFamily: 'MontserratAlternates',
                  fontSize: 16)),
                Text('${favelas[0].residences} residências', style: TextStyle(
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
                    Text('${favelas[0].totalCases} Total de Casos', style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('${favelas[0].activeCases} Casos Ativos', style:
                    TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14)),
                    Text('${favelas[0].recoveredCases} Casos Recuperados', style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14)),
                    Text('${favelas[0].deaths} Mortes', style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 14)),
                  ],
                ),

              ],
            ),
          ),
          Container(height: 230,
            child: MyScrollView(
              longText: favelas[0].description,
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