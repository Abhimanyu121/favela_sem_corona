import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  MenuItem({this.iconData, this.iconText, @required this.onPressed});

  final IconData iconData;
  final String iconText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
          Icon(iconData, color: Colors.yellow),
          SizedBox(
            width: 5.0,
          ),
          Text(iconText)
        ],
      ),
    );
  }
}
