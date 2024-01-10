import 'package:dashboard_app/bloc/chart_state.dart';
import 'package:dashboard_app/widgets/charts/bar_chart_widget1.dart';
import 'package:dashboard_app/widgets/charts/bar_chart_widget.dart';
import 'package:dashboard_app/widgets/charts/line_chart_widget1.dart';
import 'package:dashboard_app/widgets/charts/line_chart_widget.dart';
import 'package:dashboard_app/widgets/charts/pie_chart_widget.dart';
import 'package:dashboard_app/widgets/charts/scatter_chart_widget.dart';
import 'package:dashboard_app/data/chart_info.dart';
import 'package:dashboard_app/data/price_point.dart';

class ChartSamples {
  static final chartInfoList = [
    ChartInfo(chartName: 'Line Chart1', builder: (context) => LineChartWidget1()),
    ChartInfo(chartName: 'Bar Chart1', builder: (context) => BarChartWidget1()),
    ChartInfo(chartName: 'Pie Chart1', builder: (context) => const PieChartWidget()),
    ChartInfo(chartName: 'Scatter Chart1', builder: (context) => ScatterChartWidget()),
  ];

  static final chartInfoMap = {
    ChartState.line_Chart1.name: ChartInfo(chartName: 'Line_Chart1', builder: (context) => LineChartWidget1()),
    ChartState.line_Chart2.name: ChartInfo(chartName: 'Line_Chart2', builder: (context) => LineChartWidget(points: pricePoints)),
    ChartState.bar_Chart1.name: ChartInfo(chartName: 'Bar_Chart1', builder: (context) => BarChartWidget1()),
    ChartState.bar_Chart2.name: ChartInfo(chartName: 'Bar_Chart2', builder: (context) => BarChartWidget(points: pricePoints,)),
    ChartState.pie_Chart1.name: ChartInfo(chartName: 'Pie_Chart1', builder: (context) => const PieChartWidget()),
    ChartState.scatter_Chart1.name: ChartInfo(chartName: 'Scatter_Chart1', builder: (context) => ScatterChartWidget()),
  };
}
