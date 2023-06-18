import 'package:flutter/material.dart';
import '../models/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Revenuegraph extends StatelessWidget {
  List<GraphData> data;

  Revenuegraph({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<charts.Series<GraphData, String>> series = [
      charts.Series(
        id: 'GraphData',
        data: data,
        domainFn: (GraphData graphData, _) => graphData.category,
        measureFn: (GraphData graphData, _) => graphData.value,
      ),
    ];

    return Center(
      child: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.5,
        child: charts.BarChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}
