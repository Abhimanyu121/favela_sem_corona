import 'package:favelasemcorona/components/dharma_card.dart';
import 'package:flutter/material.dart';
import 'package:favelasemcorona/components/curly_header.dart';

class TestTestScreen extends StatefulWidget {
  static const id = 'test_test_screen';

  @override
  _TestTestScreenState createState() => _TestTestScreenState();
}

class _TestTestScreenState extends State<TestTestScreen> {
  final controller = ScrollController();
  double offset = 0;

  @override

  void initState(){
    super.initState();
    controller.addListener(onScroll);
  }

  void dispose(){
    controller.dispose();
    super.dispose();
  }

  void onScroll(){
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CurlyHeader(
              image: 'images/coronadr.svg',
              textTop: 'Get to know',
              textBottom: 'About Covid-19',
              offset: offset,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DharmaCard(titleOfButton: 'Headache', onPressed: ()
                        => Navigator.pop(context),),
                        DharmaCard(titleOfButton: 'Cough', onPressed: ()
                        => Navigator.pop(context),),
                        DharmaCard(titleOfButton: 'Fever', onPressed: ()
                        => Navigator.pop(context),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Prevention", ),
                  SizedBox(height: 20),
                  DharmaCard(titleOfButton: 'Wear mask', onPressed: ()
                  => Navigator.pop(context),),
                  DharmaCard(titleOfButton: 'Wash your hands', onPressed: ()
                  => Navigator.pop(context),),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
