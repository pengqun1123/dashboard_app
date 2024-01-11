sealed class ChartEvent {}
// Define the event type for switching instruments
// 定义切换仪表的事件类型
final class LineChart1Event extends ChartEvent {}

final class LineChart2Event extends ChartEvent {}

final class BarChart1Event extends ChartEvent {}

final class BarChart2Event extends ChartEvent {}

final class PieChart1Event extends ChartEvent {}

final class ScatterChart1Event extends ChartEvent {}
