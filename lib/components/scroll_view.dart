import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {

  MyScrollView({@required this.longText,});

  final String longText;

  //parei aqui: colocar cores como variaveis

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children:[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey,
                    Colors.white,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(longText, style:
                TextStyle(fontFamily: 'MontserratAlternates',
                    fontSize: 14),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}