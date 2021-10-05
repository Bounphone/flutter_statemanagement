import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class NotiModel extends ChangeNotifier{
  String _text1 = 'This1 in notimodel';



  String get text1 => _text1;

  set text1(String text1) {
    _text1 = text1;
  }

  String _text2 = 'text 2 in noti model';

  String get text2 => _text2;

  set text2(String text2) {
    _text2 = text2;
    notifyListeners();
  }
}
