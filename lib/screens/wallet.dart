import 'dart:typed_data';

import 'package:favelasemcorona/constants.dart';
import 'package:favelasemcorona/utils/ethWrapper.dart';
import 'package:favelasemcorona/utils/keyInterface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:toast/toast.dart';
class Wallet extends StatefulWidget{
  static const id ="wallet";
  @override
  WalletState createState() => WalletState();
}
class WalletState extends State<Wallet>{
  Uint8List addressBytes = Uint8List(0);
  bool walletStatus = false;
  String privateKey = "";
  String address="";
  var walletBalance = "0";
  _checkWalletStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var key = prefs.getString(prefPrivateKey);
    if(key =="" || key ==null){
      String keygen = await KeyInterface.generateKey();
      print("pvtkey:$keygen");
      await Firestore.instance.collection('walletUsers').document("987456321")
          .setData({ prefPrivateKey: keygen,});
      var addr = prefs.getString(prefAddress);
      setState(() {
        address = addr;
        privateKey = keygen;
      });
    }
    else {
      var addr = prefs.getString(prefAddress);
      setState(() {
        address = addr;
        privateKey = key;
      });
    }
  }

  _fetchKeyFromFirebase(){

  }
  _fetchBalance()async {
    var string = await EthWrapper.checkBalanceRopsten();
    Uint8List result = await scanner.generateBarCode(address);
    setState(() {
      addressBytes  = result;
      walletBalance = string;
      walletStatus = true;
    });
  }
  @override
  void initState() {
    _checkWalletStatus().then((val){
      _fetchBalance();
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return walletStatus?_wallet():_cerateWallet();
  }
  _wallet(){
    return Scaffold(
      backgroundColor: nearlyWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: nearlyWhite,
        brightness: Brightness.light,
        title: Text("Wallet", style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16,5,5,10),
                    child: Text("Your balance",style: TextStyle(fontSize:25,color: grey, fontWeight: FontWeight.bold),),
                  ),
                  Center(child: Text(walletBalance, style: TextStyle(color: secondAppTheme, fontSize: 30, fontWeight: FontWeight.bold),)),
                  Center(child: Text("USD", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16,15,5,10),
                    child: Text("Scan to get paid",style: TextStyle(fontSize:25,color: grey, fontWeight: FontWeight.bold),),
                  ),
                  Center(child: SizedBox(height:MediaQuery.of(context).size.height*0.3,width: MediaQuery.of(context).size.width*0.5,child: Image.memory(addressBytes))),
                  RaisedButton(
                    child: Text("Scan QR to pay"),
                    onPressed: ()async{
                      String photoScanResult = await scanner.scan();
                      RegExp reg = RegExp(r'^0x([A-Fa-f0-9]{40})$');
                      if(reg.hasMatch(photoScanResult)){
                        print("match");
                      }
                      else{
                        Toast.show("Invalid QR", context, duration: Toast.LENGTH_LONG);
                      }
                    },
                  ),
                ],
              )
            ],
        ),
      )
    );
  }
  _cerateWallet(){
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitCubeGrid(
              size: 50,
              color: appTheme,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
            Text("Creating a wallet for you:)", style: TextStyle(color: Colors.black),)

          ],
        ),
      ),
    );
  }

}