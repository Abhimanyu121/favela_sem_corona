import 'package:favelasemcorona/constants.dart';
import 'package:favelasemcorona/screens/useful_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurlyHeader extends StatefulWidget {

  CurlyHeader({
    this.image,
    this.textTop,
    this.textBottom,
    this.offset,
  });
  final String image;
  final String textTop;
  final String textBottom;
  final double offset;

  @override
  _CurlyHeaderState createState() => _CurlyHeaderState();
}

class _CurlyHeaderState extends State<CurlyHeader> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              kDharma1,
              kDharma2,
              kDharma3,
              kDharma4,
              kDharma5
            ]
          ),
          image: DecorationImage(
            image: AssetImage('images/virus.png'),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return UsefulInfoScreen();
                  }
                ));
              },
              child: Icon(FontAwesomeIcons.alignRight),
//              child: SvgPicture.asset('images/menu.svg'),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: (widget.offset < 0) ? 0 : widget.offset,
                    child: SvgPicture.asset(
                      widget.image,
                      width: 230,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    top: 20 - widget.offset / 2,
                    left: 150,
                    child: Text("${widget.textTop} \n${widget.textBottom}",
                    style: TextStyle( fontSize: 18, color: Colors.yellow,
                        fontWeight: FontWeight.bold))
                  ),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

