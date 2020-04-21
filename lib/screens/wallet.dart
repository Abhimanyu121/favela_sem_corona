import 'package:favelasemcorona/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Wallet extends StatefulWidget{
  static const id ="wallet";
  @override
  WalletState createState() => WalletState();
}
class WalletState extends State<Wallet>{
  bool walletStatus = false;
  String privateKey = "";
  _checkWalletStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var key = prefs.getString(prefPrivateKey);
    if(key !="" || key !=null){
      setState(() {
        walletStatus = true;
      });
    }
    else {
      setState(() {
        privateKey = key;
      });
    }
  }
  @override
  void initState() {
    _checkWalletStatus();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _cerateWallet();
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