import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:presentation1provider/models/model_flutter_value.dart';
import 'package:provider/provider.dart';

class WidgetSliderFlatterValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var modelFlutterValue = Provider.of<ModelFlutterValue>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slider(
        label: 'label',
        min: 0,
        max: 100,
        value: modelFlutterValue.flutterValue,
        onChanged: (value) {
          modelFlutterValue.flutterValue = value;
        },
      ),
    );
  }
}
