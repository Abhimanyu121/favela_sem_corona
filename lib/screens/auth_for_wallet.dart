import 'package:favelasemcorona/constants.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget{
  @override
  AuthState createState() => AuthState();
}

class AuthState extends State<Auth>{
  TextEditingController mobileNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: nearlyWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: nearlyWhite,
        brightness: Brightness.light,
        title: Text("Create New Wallet", style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    //  body: ,
    );
  }
  _loginWithPhone(){
    return Center(
      child: Column(
        children: <Widget>[
          Hero(
            child: Container(child: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/logo.png'),
              height:MediaQuery.of(context).size.height*0.35,),
            tag: 'logo-favelasemcorona',
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            autovalidate: false,
            validator: (val) => (val.isEmpty||val.length==10)
                ? null
                : 'Invalid Phone number.',
            decoration: InputDecoration(
              hintText: 'Enter Phone Number',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
            ),
            controller: mobileNumber,
          ),
        ],
      ),
    );
  }
  _enterOTP(){
    return Center(
      child: Column(
        children: <Widget>[
          Hero(
            child: Container(child: Image.network('https://raw.githubusercontent.com/itsencrypted/favela_sem_corona_api/master/images/logo.png'),
              height:MediaQuery.of(context).size.height*0.35,),
            tag: 'logo-favelasemcorona',
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            autovalidate: false,
            validator: (val) => (val.isEmpty||val.length==4)
                ? null
                : 'Invalid OTP.',
            decoration: InputDecoration(
              hintText: 'Enter OTP',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
            ),
            controller: mobileNumber,
          ),
          //RaisedButton
        ],
      ),
    );
  }
}