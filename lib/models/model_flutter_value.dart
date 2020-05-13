import 'package:flutter/widgets.dart';

class ModelFlutterValue with ChangeNotifier {
  static const String TAG = "DataModel";

  double _flutterValue = 0;

  double get flutterValue => _flutterValue;

  set flutterValue(double value) {
    _flutterValue = value;

    notifyListeners();
  }
}