import 'package:dashboard_app/bloc/chart_event.dart';
import 'package:dashboard_app/bloc/chart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc() : super(ChartState.line_Chart1) {
    on<LineChart1Event>((event, emit) => emit(ChartState.line_Chart1));
    on<LineChart2Event>((event, emit) => emit(ChartState.line_Chart2));
    on<BarChart1Event>((event, emit) => emit(ChartState.bar_Chart1));
    on<BarChart2Event>((event, emit) => emit(ChartState.bar_Chart2));
    on<PieChart1Event>((event, emit) => emit(ChartState.pie_Chart1));
    on<ScatterChart1Event>((event, emit) => emit(ChartState.scatter_Chart1));
  }
}