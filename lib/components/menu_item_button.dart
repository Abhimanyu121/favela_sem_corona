import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
MenuItem({this.icon, this.iconText, @required this.onPressed});

final IconData icon;
final String iconText;
final Function onPressed;

@override
Widget build(BuildContext context) {
  return FlatButton(
    onPressed: onPressed,
    child: Row(
      children: <Widget>[
        SizedBox(width: 40),
        Icon(icon, color: Colors.grey),
        SizedBox(width: 20),
        Text(iconText)
      ],
    ),
  );
}
}
