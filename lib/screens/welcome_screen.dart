import 'package:favelasemcorona/components/dharma_button.dart';
import 'package:favelasemcorona/screens/menu_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset(
                  'images/logo.png',
                  width: 800,
                ),
              ),
            ),
            DharmaButton(
              titleOfButton: 'Entrar',
              onPressed: () {
                Navigator.pushNamed(context, MenuScreen.id);
              },
            ),
            SizedBox(height: 80)
          ],
        ),
      ),
    );
  }
}
