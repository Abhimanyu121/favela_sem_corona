import 'dart:ui';
import 'package:favelasemcorona/models/posto_de_saude.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostoDeSaudeScreen extends StatefulWidget {
  static const String id = 'listview_screen';
  final PostoDeSaude postoDeSaude;

  PostoDeSaudeScreen({this.postoDeSaude});

  @override
  _PostoDeSaudeScreenState createState() => _PostoDeSaudeScreenState();
}

class _PostoDeSaudeScreenState extends State<PostoDeSaudeScreen> {

//  Text _buildRatingStars(int rating){
//    String stars = '';
//    for (int i=0; i < rating; i++){
//      stars += '⭐ ';
//      stars.trim();
//    }
//    return Text(stars);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0,), blurRadius: 6.0,),]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(image: AssetImage('images/doctor.png'),
                  fit: BoxFit.cover,),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back, color: Colors.indigo,size: 30.0), onPressed: () => Navigator.pop(context),),
                ],),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Rocinha', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.teal,),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.edit_location, size: 15.0, color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text('Zona Oeste', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.tealAccent),),
                    ],
                  ),
                ],),
            ),
            Positioned(
              right: 20.0,
              bottom: 20.0,
              child: Icon(Icons.location_on, color: Colors.white, size: 25.0),
            )
          ],),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: postosdesaude.length,
              itemBuilder: (BuildContext context, int index){
                PostoDeSaude postodesaude = postosdesaude[index];
//                Activity activity = widget.hospital.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(20),),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100, 20, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(width: 120,
                                    child: Text(postodesaude.nome, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),maxLines: 2, overflow: TextOverflow.ellipsis,)
                                ),
                                Column(
                                  children: <Widget>[
                                    Text('${postodesaude.telefone}', style: TextStyle(fontWeight: FontWeight.w600),),
                                    Text('aberto', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45),),
                                  ],
                                ),
                              ],),
                            Text('${postodesaude.horariosDeFuncionamento}', style: TextStyle(color: Colors.black45),),
//                            _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0,),
                            Row(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 75.0,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text('00:00', textAlign: TextAlign.center,),
                              ),
                              SizedBox(width: 10.0,),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 75.0,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text('23:59', textAlign: TextAlign.center,),),
                            ],)
                          ],),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.0),
                        child: Image(width: 110.0, image: AssetImage('logo.png'),
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