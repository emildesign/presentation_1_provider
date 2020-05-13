import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:presentation1provider/models/model_flutter_value.dart';
import 'package:provider/provider.dart';

class WidgetPieChart extends StatefulWidget {

  @override
  _WidgetPieChartState createState() => _WidgetPieChartState();
}

class _WidgetPieChartState extends State<WidgetPieChart> {
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var modelFlutterValue = Provider.of<ModelFlutterValue>(context);
    dataMap.putIfAbsent("Flutter", () => modelFlutterValue.flutterValue);
    dataMap.putIfAbsent("React", () => 30);
    dataMap.putIfAbsent("Xamarin", () => 20);
    dataMap.putIfAbsent("Ionic", () => 20);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelFlutterValue>(
      builder: (context, dataModel, child) {
        dataMap["Flutter"] = dataModel.flutterValue;
        return Container(
          child: Center(
              child: PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32.0,
            chartRadius: MediaQuery.of(context).size.width / 1.2,
            showChartValuesInPercentage: true,
            showChartValues: false,
            showChartValuesOutside: false,
            chartValueBackgroundColor: Colors.grey[200],
            colorList: colorList,
            showLegends: false,
            legendPosition: LegendPosition.right,
            decimalPlaces: 1,
            showChartValueLabel: false,
            initialAngle: 0,
            chartValueStyle: defaultChartValueStyle.copyWith(
              color: Colors.blueGrey[900].withOpacity(0.9),
            ),
            chartType: ChartType.disc,
          )),
        );
      },
    );
  }
}
