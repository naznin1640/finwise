import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/home/widgets/tabbar_view.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class QuickAnalysisView extends StatelessWidget {
  const QuickAnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quickly Analysis",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              foregroundColor: ConstantColors.backgroundColor,
              child: Icon(
                size: 30,
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/Ellipse 182.png"),
                          Positioned(
                            left: 31,
                            child: Image.asset("assets/images/Ellipse 183.png"),
                          ),
                          Positioned(
                            top: 20,
                            left: 13,
                            child: Image.asset("assets/images/Car.png"),
                          ),
                        ],
                      ),
                      Text(
                        "Savings\non Goal",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 108,
                  decoration: BoxDecoration(color: ConstantColors.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Image.asset("assets/images/Salary.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Revenue Last Week",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "  ₹4.000.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11),
                      child: Container(
                        width: 161,
                        height: 1,
                        color: ConstantColors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset("assets/images/Food.png"),
                        ),
                        Column(
                          children: [
                            Text(
                              "  Food Last Week",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "-₹100.00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: ConstantColors.oceanBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: ConstantColors.backgroundColor,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 28,
                      left: 37,
                      right: 36,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ConstantColors.lighGreen,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 21,
                                  left: 29,
                                  bottom: 20,
                                ),
                                child: Text(
                                  "April Expenses",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 29),
                                  child: Row(
                                    spacing: 3,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ConstantColors.mainGreen,
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.search_rounded,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ConstantColors.mainGreen,
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.calendar_today_outlined,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: SizedBox(
                              height: 180,
                              child: BarChart(
                                BarChartData(
                                  maxY: 25,
                                  alignment: BarChartAlignment.spaceAround,
                                  gridData: FlGridData(
                                    show: true,
                                    drawVerticalLine: false,
                                    horizontalInterval: 5,

                                    getDrawingHorizontalLine: (value) {
                                      return FlLine(
                                        color: ConstantColors.lightBlue
                                            .withValues(alpha: 0.3),
                                        strokeWidth: 1,
                                        dashArray: [4, 4],
                                      );
                                    },
                                  ),

                                  borderData: FlBorderData(show: false),

                                  titlesData: FlTitlesData(
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),

                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),

                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 35,
                                        interval: 5,

                                        getTitlesWidget: (value, meta) {
                                          if (value == 0) {
                                            return Text("");
                                          }

                                          if (value == 5) {
                                            return Text(
                                              "1k",
                                              style: TextStyle(
                                                color: ConstantColors.lightBlue,
                                              ),
                                            );
                                          }

                                          if (value == 10) {
                                            return Text(
                                              "5k",
                                              style: TextStyle(
                                                color: ConstantColors.lightBlue,
                                              ),
                                            );
                                          }

                                          if (value == 15) {
                                            return Text(
                                              "10k",
                                              style: TextStyle(
                                                color: ConstantColors.lightBlue,
                                              ),
                                            );
                                          }
                                          if (value == 20) {
                                            return Text(
                                              "15k",
                                              style: TextStyle(
                                                color: ConstantColors.lightBlue,
                                              ),
                                            );
                                          }

                                          return const SizedBox();
                                        },
                                      ),
                                    ),

                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        getTitlesWidget: (value, meta) {
                                          String text = "";

                                          switch (value.toInt()) {
                                            case 0:
                                              text = "1st Week";
                                              break;

                                            case 1:
                                              text = "2nd Week";
                                              break;

                                            case 2:
                                              text = "3rd Week";
                                              break;

                                            case 3:
                                              text = "4th Week";
                                              break;
                                          }

                                          return SideTitleWidget(
                                            meta: meta,
                                            child: Text(
                                              text,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "League Spartan",
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),

                                  barGroups: [
                                    BarChartGroupData(
                                      x: 0,
                                      barsSpace: 6,
                                      barRods: [
                                        BarChartRodData(
                                          toY: 1.5,
                                          width: 6,
                                          color: ConstantColors.mainGreen,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        BarChartRodData(
                                          toY: 4,
                                          width: 6,
                                          color: ConstantColors.oceanBlue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ],
                                    ),

                                    BarChartGroupData(
                                      x: 1,
                                      barsSpace: 6,
                                      barRods: [
                                        BarChartRodData(
                                          toY: 2,
                                          width: 7,
                                          color: ConstantColors.mainGreen,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        BarChartRodData(
                                          toY: 8,
                                          width: 7,
                                          color: ConstantColors.oceanBlue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ],
                                    ),

                                    BarChartGroupData(
                                      x: 2,
                                      barsSpace: 6,
                                      barRods: [
                                        BarChartRodData(
                                          toY: 6,
                                          width: 7,
                                          color: ConstantColors.mainGreen,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        BarChartRodData(
                                          toY: 12,
                                          width: 7,
                                          color: ConstantColors.oceanBlue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ],
                                    ),

                                    BarChartGroupData(
                                      x: 3,
                                      barsSpace: 6,
                                      barRods: [
                                        BarChartRodData(
                                          toY: 10,
                                          width: 7,
                                          color: ConstantColors.mainGreen,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        BarChartRodData(
                                          toY: 6,
                                          width: 7,
                                          color: ConstantColors.oceanBlue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(37),
                    child: TabbarView(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
