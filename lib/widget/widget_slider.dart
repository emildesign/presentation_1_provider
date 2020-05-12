import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetSlider extends StatefulWidget {
  @override
  _WidgetSliderState createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<WidgetSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slider(
        label: 'label',
        min: 0,
        max: 100,
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
