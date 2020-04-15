import 'package:favelasemcorona/components/dharma_button.dart';
import 'package:favelasemcorona/screens/menu_icons_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        elevation: 0.0,
//        backgroundColor: Colors.white,
//        bottomOpacity: 0.0,
//        actions: <Widget>[
//          IconButton(
//            onPressed: () => {Navigator.pushNamed(context, 'menu_icons_screen')},
//            icon: Icon(
//              Icons.list,
//              color: Colors.black,
//              size: 40.0,
//            ),
//          )
//        ],
//      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 120),
            Hero(
              child: Container(child: Image.asset('images/logo.png'),
                height:
              500,),
              tag: 'logo-favelasemcorona',),
            DharmaButton(
              titleOfButton: 'Entrar',
              onPressed: () => Navigator.pushReplacementNamed(context,
                  MenuIconsScreen.id),
            ),
          ],
        ),
      ),
    );
  }
}
