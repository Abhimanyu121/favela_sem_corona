import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:favelasemcorona/constants.dart';

class MapsDemo extends StatefulWidget {
  static const id = 'maps_demo';

  @override
  _MapsDemoState createState() => _MapsDemoState();
}

class _MapsDemoState extends State<MapsDemo> {

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = LatLng(-22.8652092,-43.5232072);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  static final CameraPosition _position1 = CameraPosition(
    bearing: 192.833,
    target: LatLng(-22.8852092,-43.5232072),
    zoom: 13,
  );

  // ignore: missing_return
  Future<void> _goToPosition1() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_position1));
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType =
      _currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
            title: 'Isso eh um Titulo', snippet: 'Isso eh um snippet'),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  Widget MyButton(Function function, IconData icon) {
    return FlatButton(
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      child: Icon(icon, size: 36.0,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text('Baixada Fluminense'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red,
                  Colors.redAccent,
                  kDharma4,
                  kDharma5,]
              )
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                //
              },
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                  target: _center, zoom: 11.0),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(children: <Widget>[
                  MyButton(_onMapTypeButtonPressed, Icons.map),
                  SizedBox(height: 16,),
                  MyButton(_onAddMarkerButtonPressed, Icons.add_location),
                  SizedBox(height: 16,),
                  MyButton(_goToPosition1, Icons.location_searching),
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}

