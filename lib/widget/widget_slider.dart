import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetSlider extends StatefulWidget {
  WidgetSlider({@required this.onSetFlutterValueFunction});

  @override
  _WidgetSliderState createState() => _WidgetSliderState();
  
  final Function(double) onSetFlutterValueFunction;
}

class _WidgetSliderState extends State<WidgetSlider> {
  double flutterValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slider(
        label: 'label',
        min: 0,
        max: 100,
        value: flutterValue,
        onChanged: (value) {
          setState(() {
            flutterValue = value;
            widget.onSetFlutterValueFunction(flutterValue);
          });
        },
      ),
    );
  }
}
