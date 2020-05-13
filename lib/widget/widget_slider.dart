import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:presentation1provider/models/model_flutter_value.dart';
import 'package:provider/provider.dart';

class WidgetSlider extends StatefulWidget {
  @override
  _WidgetSliderState createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<WidgetSlider> {
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
