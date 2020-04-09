import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuIconsScreen extends StatelessWidget {
  static const String id = "menu_icons_screen";

  Widget MenuItem(IconData icon, String text, Function pressed) {
    return FlatButton(
      onPressed: pressed,
      child: Row(
        children: <Widget>[
          SizedBox(width: 40),
          Icon(icon, color: Colors.grey),
          SizedBox(width: 10),
          Text(text)
        ],
      ),
    );
  }

  Widget line() {
    return SizedBox(
      width: 200,
      child: Divider(color: Colors.grey.shade400,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
//                      IconButton(
//                        onPressed: () => {Navigator.pop(context)},
//                        icon: Icon(
//                          Icons.arrow_back,
//                          color: Colors.white,
//                          size: 40,
//                        ),
//                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Image.asset(
                          'images/logo.png',
                          width: 200,
                          height: 150,
                        ),
                      ),
                      SizedBox(height: 20),
                      line(),
                      MenuItem(Icons.dashboard, "PAINEL RIO COVID19",
                              () => {Navigator.pushNamed(context, 'painelcovidrio_screen')}),
                      MenuItem(Icons.local_hospital, "HOSPITAIS E UPAS", () => {Navigator.pushNamed(context, 'maps_demo')}),
                      MenuItem(Icons.flash_on, "PRINCIPAIS DÚVIDAS", () => {Navigator.pushNamed(context, 'min_saude_screen')}),
                      MenuItem(Icons.filter_hdr, "ASSITÊNCIA FUNERÁRIA", () => {Navigator.pushNamed(context, 'iml_screen')}),
                      line(),
                      MenuItem(Icons.directions_run, "SUA COMUNIDADE", () => {Navigator.pushNamed(context, 'listview_screen')}),
                      MenuItem(Icons.contacts, "LIVES & EVENTOS", () => {}),
                      MenuItem(Icons.pan_tool, "STOP COVID19", () => {Navigator.pushNamed(context, 'quiz_screen')}),
                      MenuItem(Icons.touch_app, "NOSSAS MÍDIAS SOCIAIS", () => {Navigator.pushNamed(context, 'instagram_screen')}),
                      line(),
                      MenuItem(
                          Icons.chat_bubble_outline, "APOIO PSICOLÓGICO", () => {}),
                      MenuItem(Icons.record_voice_over, "DISK DENÚNCIA", () => {}),
                      line(),
                      MenuItem(Icons.exit_to_app, "LOGOUT", () => {Navigator.pop(context)})
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
