import 'package:dashboard_app/bloc/chart_state.dart';
import 'package:dashboard_app/data/chart_info.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/app_dimens.dart';

class ChartItem extends StatelessWidget {
  final ChartInfo chartInfo;

  const ChartItem({
    Key? key,
    required this.chartInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (chartInfo.chartName.toLowerCase() == ChartState.line_Chart2.name.toLowerCase()
    || chartInfo.chartName.toLowerCase() == ChartState.bar_Chart2.name.toLowerCase())
        ? chartInfo.builder(context)
        : Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    chartInfo.chartName,
                    style: const TextStyle(
                      color: AppColors.contentColorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.itemsBackground,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppDimens.defaultRadius)),
                ),
                child: chartInfo.builder(context),
              ),
            ],
          );
  }
}
