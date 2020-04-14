import 'package:favelasemcorona/components/scroll_view.dart';
//import 'package:favelasemcorona/screens/entrepreneurs_screen.dart';
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
            Container(height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0,
                  2), blurRadius: 6)]),
              //TODO: Add HERO widget here
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(image: AssetImage
                  ('images/favelaAndarai_MarceloHorn.jpg'),
                fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,
                      size: 30.0), onPressed: () => Navigator.pushReplacementNamed(context, MenuIconsScreen.id)),
                ],),
            ),
          ],
          ),
          Container(height: 300, color: Colors.cyanAccent,
            child: MyScrollView(longText: favelas[0].description,),
          )
//          child: SingleChildScrollView('${favelas[0].description}'),),
        ],
      ),
    );
  }
}

