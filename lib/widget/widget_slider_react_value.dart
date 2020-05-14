import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:presentation1provider/models/model_flutter_value_change_notifier.dart';
import 'package:presentation1provider/models/model_react_value_change_notifier.dart';
import 'package:provider/provider.dart';

class WidgetSliderReactValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var modelFlutterValue = Provider.of<ModelReactValue>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slider(
        label: 'label',
        min: 0,
        max: 100,
        value: modelFlutterValue.reactValue,
        onChanged: (value) {
          modelFlutterValue.reactValue = value;
        },
      ),
    );
  }
}
