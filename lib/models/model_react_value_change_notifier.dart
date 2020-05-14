import 'package:flutter/widgets.dart';

class ModelReactValue extends ChangeNotifier {
  static const String TAG = "ModelReactValue";

  double _reactValue = 0;

  double get reactValue => _reactValue;

  set reactValue(double value) {
    _reactValue = value;

    notifyListeners();  
  }
}