part of 'models.dart';

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}

final List<ChartData> chartData = [
  ChartData(4, 35),
  ChartData(5, 13),
  ChartData(6, 34),
  ChartData(7, 27),
  ChartData(8, 40),
  ChartData(9, 50),
  ChartData(10, 80),
  ChartData(11, 80),
  ChartData(12, 100),
];
