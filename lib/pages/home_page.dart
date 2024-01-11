import 'package:dashboard_app/bloc/chart_bloc.dart';
import 'package:dashboard_app/bloc/chart_event.dart';
import 'package:dashboard_app/bloc/chart_state.dart';
import 'package:dashboard_app/widgets/menu_header.dart';
import 'package:dashboard_app/widgets/charts/line_chart_widget1.dart';
import 'package:dashboard_app/data/chart_info.dart';
import 'package:dashboard_app/data/chart_samples.dart';
import 'package:dashboard_app/resources/app_colors.dart';
import 'package:dashboard_app/resources/app_dimens.dart';
import 'package:dashboard_app/widgets/chart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Register the Bloc into the widget tree
    // 注册Bloc到小部件树中
    return BlocProvider(
      // Create a specific Bloc, register it, and mount it on the Widget tree. Sub-Widgets can be obtained through context.
      // 创建具体的Bloc，并进行注册，挂载到Widget树上，子Widget可以通过context获取
      create: (context) => ChartBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.contentColorBlue,
              title: const Text(
                'Chart Demo',
                style: TextStyle(
                  color: AppColors.menuBackground,
                  fontWeight: FontWeight.w600,
                ),
              ),
              systemOverlayStyle: SystemUiOverlayStyle.light),
          drawer: Drawer(
            shape: const BeveledRectangleBorder(),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: MenuHeader(),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/ic_line_chart.svg',
                    width: AppDimens.menuIconSize,
                    height: AppDimens.menuIconSize,
                    colorFilter: const ColorFilter.mode(
                        AppColors.contentColorBlack, BlendMode.srcIn),
                  ),
                  title: const Text(
                    'Line Chart',
                    style: TextStyle(
                      color: AppColors.contentColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    context.read<ChartBloc>().add(LineChart1Event());
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/ic_line_chart.svg',
                    width: AppDimens.menuIconSize,
                    height: AppDimens.menuIconSize,
                    colorFilter: const ColorFilter.mode(
                        AppColors.contentColorBlack, BlendMode.srcIn),
                  ),
                  title: const Text(
                    'Line2 Chart',
                    style: TextStyle(
                      color: AppColors.contentColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    context.read<ChartBloc>().add(LineChart2Event());
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/ic_bar_chart.svg',
                    width: AppDimens.menuIconSize,
                    height: AppDimens.menuIconSize,
                    colorFilter: const ColorFilter.mode(
                        AppColors.contentColorBlack, BlendMode.srcIn),
                  ),
                  title: const Text(
                    'Bar Chart',
                    style: TextStyle(
                      color: AppColors.contentColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    context.read<ChartBloc>().add(BarChart1Event());
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/ic_bar_chart.svg',
                    width: AppDimens.menuIconSize,
                    height: AppDimens.menuIconSize,
                    colorFilter: const ColorFilter.mode(
                        AppColors.contentColorBlack, BlendMode.srcIn),
                  ),
                  title: const Text(
                    'Bar2 Chart',
                    style: TextStyle(
                      color: AppColors.contentColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    context.read<ChartBloc>().add(BarChart2Event());
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/ic_pie_chart.svg',
                    width: AppDimens.menuIconSize,
                    height: AppDimens.menuIconSize,
                    colorFilter: const ColorFilter.mode(
                        AppColors.contentColorBlack, BlendMode.srcIn),
                  ),
                  title: const Text(
                    'Pie Chart',
                    style: TextStyle(
                      color: AppColors.contentColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    context.read<ChartBloc>().add(PieChart1Event());
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/ic_scatter_chart.svg',
                    width: AppDimens.menuIconSize,
                    height: AppDimens.menuIconSize,
                    colorFilter: const ColorFilter.mode(
                        AppColors.contentColorBlack, BlendMode.srcIn),
                  ),
                  title: const Text(
                    'Scatter Chart',
                    style: TextStyle(
                      color: AppColors.contentColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    context.read<ChartBloc>().add(ScatterChart1Event());
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          // Monitor the status changes of ChartBloc and update UI widgets
          // 监听ChartBloc的状态变化更新UI小部件
          body: BlocBuilder<ChartBloc, ChartState>(
            builder: (context, state) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: AppDimens.chartSamplesSpace,
                    right: AppDimens.chartSamplesSpace,
                    top: AppDimens.chartSamplesSpace,
                    bottom: AppDimens.chartSamplesSpace + 68,
                  ),
                  child: ChartItem(
                      chartInfo: ChartSamples.chartInfoMap[state.name] ??
                          ChartInfo(
                              chartName: 'Line Chart1',
                              builder: (context) => LineChartWidget1())),
                ),
              );
            },
          ),
          // MasonryGridView.builder(
          //   itemCount: 4,
          //   padding: const EdgeInsets.only(
          //     left: AppDimens.chartSamplesSpace,
          //     right: AppDimens.chartSamplesSpace,
          //     top: AppDimens.chartSamplesSpace,
          //     bottom: AppDimens.chartSamplesSpace + 68,
          //   ),
          //   crossAxisSpacing: AppDimens.chartSamplesSpace,
          //   mainAxisSpacing: AppDimens.chartSamplesSpace,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ChartItem(chartInfo: ChartSamples.chartInfoList[index]);
          //   },
          //   gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 600,
          //   ),
          // ),
        );
      }),
    );
  }
}
