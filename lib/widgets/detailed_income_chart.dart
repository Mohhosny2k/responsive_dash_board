import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pietouchResponse) {
            //  log(pietouchResponse.toString());
            activeIndex =
                pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex ==0 ? 1.5 :null,
          value: 40,
           title: activeIndex == 0 ? 'Design service' : '40%',
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF208BB7),
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 0 ?null: Colors.white),
        ),
        PieChartSectionData(
           titlePositionPercentageOffset: activeIndex ==1 ? 2.2 :null,
          value: 25,
          title:activeIndex == 1 ? 'Design product' : '25%',
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ?null: Colors.white),
        ),
        PieChartSectionData(
           titlePositionPercentageOffset: activeIndex ==2 ? 1.4 :null,
           value: 20,
          title:activeIndex == 2 ? 'product royalti' : '20%',
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 2?null: Colors.white),
        ),
        PieChartSectionData(
           titlePositionPercentageOffset: activeIndex ==3 ? 1.4 :null,
          title:activeIndex == 3 ? 'Other' : '22%',
        value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 3 ?null: Colors.white),
        ),
      ],
    );
  }
}
