import 'dart:ui';
import 'package:favelasemcorona/models/entrepreneurs.dart';
import 'package:favelasemcorona/models/favelas.dart';
import 'package:favelasemcorona/screens/menu_icons_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Favela favela = Favela();

class FavelasScreen extends StatefulWidget {
  static const String id = 'favelas_screen';
  final Favela favela;

  // ignore: sort_constructors_first
  FavelasScreen({this.favela});

  @override
  _FavelasScreenState createState() => _FavelasScreenState();
}

class _FavelasScreenState extends State<FavelasScreen> {

  String communityName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(height: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0,), blurRadius: 6.0,),]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(image: AssetImage('images/favelaRocinha.jpg'),
                  fit: BoxFit.cover,),),
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
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Rocinha', style: TextStyle(fontSize: 25.0,
                    fontWeight: FontWeight.w600, color: Colors.white,),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.edit_location, size: 15.0, color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text('Zona Oeste', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.tealAccent),),
                    ],
                  ),
                ],),
            ),
          ],),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: rocinhaEntrepreneurs.length,
              itemBuilder: (BuildContext context, int index){
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(110, 5, 10, 5),
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey
                          .shade200,
                        borderRadius: BorderRadius.circular(20),),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(width: 140,
                                    child: Text
                                      ('${rocinhaEntrepreneurs[index].businessName}',
                                      style:
                                    TextStyle
                                      (fontSize: 16.0, fontWeight: FontWeight.w600),maxLines: 2, overflow: TextOverflow.ellipsis,)
                                ),
                                Text('${rocinhaEntrepreneurs[index].businessType}',
                                  style:
                                TextStyle
                                  (fontSize:10, fontWeight: FontWeight.w600),),
                              ],),
                            SizedBox(height: 8.0,),
                            Text('WhatsApp: ${rocinhaEntrepreneurs[index]
                                .whatsApp}', style: TextStyle(color: Colors.green),),
                            SizedBox(height: 2.0,),
                            Text('Instagram: ${rocinhaEntrepreneurs[index]
                                .instagramUrl}', style: TextStyle(color:
                            Colors.black54),),
                            SizedBox(height: 2.0,),
                            Text('${rocinhaEntrepreneurs[index]
                                .facebookUrl}', style: TextStyle(color:
                            Colors.black54),),
                            SizedBox(height: 2.0,),
                          ],),
                      ),
                    ),
                    Positioned(
                      left: 10.0,
                      top: 5.0,
                      bottom: 5.0,
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.0),
                        child: Image(width: 100.0, image: AssetImage
                          ('images/chef-logo.jpg'),
                          fit: BoxFit.cover,),),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}