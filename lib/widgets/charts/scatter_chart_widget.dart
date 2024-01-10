import 'dart:math';

import 'package:dashboard_app/resources/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartWidget extends StatefulWidget {
  ScatterChartWidget({super.key});

  final blue1 = AppColors.contentColorBlue.withOpacity(0.3);
  final blue2 = AppColors.contentColorBlue;
  final purple1 = AppColors.contentColorPurple.withOpacity(0.5);
  final purple2 = AppColors.contentColorBlue;
  final cyan1 = AppColors.contentColorCyan.withOpacity(0.5);
  final cyan2 = AppColors.contentColorCyan;
  final pink1 = AppColors.contentColorPink.withOpacity(0.3);
  final pink2 = AppColors.contentColorPink.withOpacity(0.73);
  final yellow1 = AppColors.contentColorYellow.withOpacity(0.83);
  final yellow2 = AppColors.contentColorYellow.withOpacity(0.13);

  @override
  State<StatefulWidget> createState() => ScatterChartWidgetState();
}

class ScatterChartWidgetState extends State<ScatterChartWidget> {
  final maxX = 50.0;
  final maxY = 50.0;
  final radius = 8.0;

  bool showFlutter = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showFlutter = !showFlutter;
        });
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: ScatterChart(
          ScatterChartData(
            scatterSpots: showFlutter ? flutterLogoData() : randomData(),
            minX: 0,
            maxX: maxX,
            minY: 0,
            maxY: maxY,
            borderData: FlBorderData(
              show: false,
            ),
            gridData: const FlGridData(
              show: false,
            ),
            titlesData: const FlTitlesData(
              show: false,
            ),
            scatterTouchData: ScatterTouchData(
              enabled: false,
            ),
          ),
          swapAnimationDuration: const Duration(milliseconds: 600),
          swapAnimationCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  List<ScatterSpot> flutterLogoData() {
    return [
      /// section 1
      ScatterSpot(
        20,
        14.5,
        color: widget.pink2,
        radius: radius,
      ),
      ScatterSpot(
        20,
        14.5,
        color: widget.cyan1,
        radius: radius,
      ),
      ScatterSpot(
        22,
        16.5,
        color: widget.blue1,
        radius: radius,
      ),
      ScatterSpot(
        24,
        18.5,
        color: widget.blue1,
        radius: radius,
      ),

      ScatterSpot(
        22,
        12.5,
        color: widget.blue1,
        radius: radius,
      ),
      ScatterSpot(
        24,
        14.5,
        color: widget.purple2,
        radius: radius,
      ),
      ScatterSpot(
        26,
        16.5,
        color: widget.cyan1,
        radius: radius,
      ),

      ScatterSpot(
        24,
        10.5,
        color: widget.blue1,
        radius: radius,
      ),
      ScatterSpot(
        26,
        12.5,
        color: widget.blue1,
        radius: radius,
      ),
      ScatterSpot(
        28,
        14.5,
        color: widget.yellow1,
        radius: radius,
      ),

      ScatterSpot(
        26,
        8.5,
        color: widget.pink1,
        radius: radius,
      ),
      ScatterSpot(
        28,
        10.5,
        color: widget.blue1,
        radius: radius,
      ),
      ScatterSpot(
        30,
        12.5,
        color: widget.pink1,
        radius: radius,
      ),

      ScatterSpot(
        28,
        6.5,
        color: widget.blue1,
        radius: radius,
      ),
      ScatterSpot(
        30,
        8.5,
        color: widget.cyan2,
        radius: radius,
      ),
      ScatterSpot(
        32,
        10.5,
        color: widget.blue1,
        radius: radius,
      ),

      ScatterSpot(
        30,
        4.5,
        color: widget.cyan1,
        radius: radius,
      ),
      ScatterSpot(
        32,
        6.5,
        color: widget.blue1, radius: radius
      ),
      ScatterSpot(
        34,
        8.5,
        color: widget.pink2, radius: radius
      ),

      ScatterSpot(
        34,
        4.5,
        color: widget.purple2, radius: radius
      ),
      ScatterSpot(
        36,
        6.5,
        color: widget.blue1, radius: radius
      ),

      ScatterSpot(
        38,
        4.5,
        color: widget.purple1, radius: radius
      ),

      /// section 2
      ScatterSpot(
        20,
        14.5,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        22,
        12.5,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        24,
        10.5,
        color: widget.purple1, radius: radius,
      ),

      ScatterSpot(
        22,
        16.5,
        color: widget.purple2, radius: radius,
      ),
      ScatterSpot(
        24,
        14.5,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        26,
        12.5,
        color: widget.cyan1, radius: radius,
      ),

      ScatterSpot(
        24,
        18.5,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        26,
        16.5,
        color: widget.cyan2, radius: radius,
      ),
      ScatterSpot(
        28,
        14.5,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        26,
        20.5,
        color: widget.cyan2, radius: radius,
      ),
      ScatterSpot(
        28,
        18.5,
        color: widget.purple1, radius: radius,
      ),
      ScatterSpot(
        30,
        16.5,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        28,
        22.5,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        30,
        20.5,
        color: widget.cyan1, radius: radius,
      ),
      ScatterSpot(
        32,
        18.5,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        30,
        24.5,
        color: widget.cyan2, radius: radius,
      ),
      ScatterSpot(
        32,
        22.5,
        color: widget.purple1, radius: radius,
      ),
      ScatterSpot(
        34,
        20.5,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        34,
        24.5,
        color: widget.purple2, radius: radius,
      ),
      ScatterSpot(
        36,
        22.5,
        color: widget.cyan1, radius: radius,
      ),

      ScatterSpot(
        38,
        24.5,
        color: widget.blue2, radius: radius,
      ),

      /// section 3
      ScatterSpot(
        10,
        25,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        12,
        23,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        14,
        21,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        12,
        27,
        color: widget.purple2, radius: radius,
      ),
      ScatterSpot(
        14,
        25,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        16,
        23,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        14,
        29,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        16,
        27,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        18,
        25,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        16,
        31,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        18,
        29,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        20,
        27,
        color: widget.cyan1, radius: radius,
      ),

      ScatterSpot(
        18,
        33,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        20,
        31,
        color: widget.cyan2, radius: radius,
      ),
      ScatterSpot(
        22,
        29,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        20,
        35,
        color: widget.yellow2, radius: radius,
      ),
      ScatterSpot(
        22,
        33,
        color: widget.pink2, radius: radius,
      ),
      ScatterSpot(
        24,
        31,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        22,
        37,
        color: widget.purple2, radius: radius,
      ),
      ScatterSpot(
        24,
        35,
        color: widget.yellow2, radius: radius,
      ),
      ScatterSpot(
        26,
        33,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        24,
        39,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        26,
        37,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        28,
        35,
        color: widget.yellow2, radius: radius,
      ),

      ScatterSpot(
        26,
        41,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        28,
        39,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        30,
        37,
        color: widget.purple1, radius: radius,
      ),

      ScatterSpot(
        28,
        43,
        color: widget.pink2, radius: radius,
      ),
      ScatterSpot(
        30,
        41,
        color: widget.yellow1, radius: radius,
      ),
      ScatterSpot(
        32,
        39,
        color: widget.cyan2, radius: radius,
      ),

      ScatterSpot(
        30,
        45,
        color: widget.yellow1, radius: radius,
      ),
      ScatterSpot(
        32,
        43,
        color: widget.blue2, radius: radius,
      ),
      ScatterSpot(
        34,
        41,
        color: widget.cyan1, radius: radius,
      ),

      ScatterSpot(
        34,
        45,
        color: widget.yellow2, radius: radius,
      ),
      ScatterSpot(
        36,
        43,
        color: widget.blue2, radius: radius,
      ),

      ScatterSpot(
        38,
        45,
        color: widget.pink2, radius: radius,
      ),
    ];
  }

  List<ScatterSpot> randomData() {
    const blue1Count = 11;
    const blue2Count = 57;
    return List.generate(blue1Count + blue2Count, (i) {
      Color color;
      if (i < blue1Count) {
        color = widget.blue1;
      } else {
        color = widget.cyan1;
      }

      return ScatterSpot(
        (Random().nextDouble() * (maxX - 8)) + 4,
        (Random().nextDouble() * (maxY - 8)) + 4,
          color: color,
          radius: (Random().nextDouble() * 16) + 4,
      );
    });
  }
}
