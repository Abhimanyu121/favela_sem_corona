import 'package:bip39/bip39.dart' as bip39;
import 'package:favelasemcorona/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web3dart/web3dart.dart';
import 'package:bitcoin_flutter/bitcoin_flutter.dart';

class KeyInterface{
  Future<String> generateKey()async {
    var mnemonic = bip39.generateMnemonic();
    var seed = bip39.mnemonicToSeed(mnemonic);
    var hdWallet = HDWallet(bip32: Bip32Type(public: 1,private: 1),network: bitcoin,seed: seed.toString(), p2pkh: P2PKH(data:true));
    print(mnemonic);
    var creds= EthPrivateKey.fromHex(hdWallet.privKey);
    var address = await creds.extractAddress();
    print("address:"+address.toString());
    var add = EthereumAddress.fromHex(address.toString());
    print(add);
    String ppk = hdWallet.privKey;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefAddress, address.toString());
    await prefs.setString(prefPrivateKey, ppk);
    return ppk;
  }
}