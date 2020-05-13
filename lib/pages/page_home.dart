import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:presentation1provider/widget/widget_pie_chart.dart';
import 'package:presentation1provider/widget/widget_slider.dart';

class PageHome extends StatefulWidget {
  PageHome({@required this.title});

  String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  double flutterValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WidgetPieChart(
              flutterValue: flutterValue,
            ),
            Container(
              height: 100,
            ),
            WidgetSlider(onSetFlutterValueFunction: (value) {
              _updateFlutterValue(value);
            }),
          ],
        ),
      ),
    );
  }

  void _updateFlutterValue(double value) {
    print("$value");
      setState(
      () {
        flutterValue = value;
      },
    );
  }
}
