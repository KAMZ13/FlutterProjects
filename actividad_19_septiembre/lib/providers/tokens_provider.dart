import 'package:flutter/cupertino.dart';

class TokensProvider with ChangeNotifier {
  List<dynamic> _tokenList = [
    {
      "string": "0xfffr",
      "value": "322.77 ETH",
      "company": "Binance",
      "money": "200k"
    },
  ];

  List<dynamic> get getTokenList => _tokenList;

  void addNewToken(dynamic tokenObj) {
    _tokenList.add(_tokenList);
    notifyListeners();
  }
}
