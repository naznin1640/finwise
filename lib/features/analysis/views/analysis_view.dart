import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/analysis/model/chart_data.dart';
import 'package:finwise/features/analysis/views/search_view.dart';
import 'package:finwise/features/home/widgets/tabbar_view.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Analysis",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 20,
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
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 37),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Income.png"),
                            Text(
                              "  Total Balance",
                              style: TextStyle(
                                color: ConstantColors.textClr,
                                fontSize: 12,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "₹7,783.00",
                          style: TextStyle(
                            fontSize: 24,
                            color: ConstantColors.backgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 39),
                    child: Container(
                      height: 42,
                      width: 1,
                      decoration: BoxDecoration(color: ConstantColors.white),
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/Expense.png"),
                          Text("  Total Expense"),
                        ],
                      ),
                      Text(
                        "-₹1.187.40",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: ConstantColors.oceanBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 12),
            child: Stack(
              children: [
                Container(
                  height: 27,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF052224),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Text(
                      "30%",
                      style: TextStyle(
                        color: ConstantColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 33,
                  child: Container(
                    height: 27,
                    width: 261,
                    decoration: BoxDecoration(
                      color: ConstantColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(textAlign: TextAlign.end, "₹20,000.00    ."),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/check.png"),
                Text(
                  "   30% of your expenses, looks good.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: ConstantColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultTabController(
                      length: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 36, right: 36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 60,
                              width: 35,
                              decoration: BoxDecoration(
                                color: ConstantColors.lighGreen,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  color: ConstantColors.mainGreen,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                dividerColor: Colors.transparent,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.black54,
                                indicatorSize: TabBarIndicatorSize.tab,
                                tabs: const [
                                  Tab(text: "Daily"),

                                  Tab(text: "Weekly"),

                                  Tab(text: "Monthly"),

                                  Tab(text: "Year"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 280,
                              child: Expanded(
                                child: TabBarView(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 24),
                                      child: barContainer(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: barContainer(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: barContainer(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: barContainer(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 29, left: 30),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ConstantColors.backgroundColor,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 60,
                        right: 60,
                      ),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.crop_square_outlined,
                            size: 25,
                            color: ConstantColors.mainGreen,
                          ),
                          Positioned(
                            top: 4,
                            left: 4,
                            child: Icon(
                              Icons.arrow_outward_rounded,
                              size: 17,
                              color: ConstantColors.mainGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Income",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Text(
                        "₹4,000.00",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 29, left: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ConstantColors.backgroundColor,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 60,
                        right: 60,
                      ),
                      child: Image.asset(
                        "assets/images/Expense.png",
                        height: 25,
                        width: 25,
                        color: ConstantColors.oceanBlue,
                      ),
                    ),
                    Text(
                      "Expense",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Text(
                        "₹1.187.40",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: ConstantColors.oceanBlue,
                        ),
                      ),
                    ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget barContainer() {
  return Container(
    decoration: BoxDecoration(
      color: ConstantColors.lighGreen,
      borderRadius: BorderRadius.circular(60),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21, left: 29, bottom: 20),
              child: Text(
                "Income & Expenses",
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
                    GestureDetector(
                      onTap: (){
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: ConstantColors.mainGreen,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search_rounded, size: 16),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ConstantColors.mainGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.calendar_today_outlined, size: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 150,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              majorGridLines: MajorGridLines(width: 0),
            ),

            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: 20,
              interval: 5,

              majorGridLines: MajorGridLines(width: 1, dashArray: [4, 4]),
              axisLine: AxisLine(width: 0),
              axisLabelFormatter: (AxisLabelRenderDetails details) {
                String text = "";

                switch (details.value.toInt()) {
                  case 5:
                    text = '1k';
                    break;

                  case 10:
                    text = '5k';
                    break;

                  case 15:
                    text = '10k';
                    break;

                  case 20:
                    text = '15k';
                    break;
                }
                return ChartAxisLabel(
                  text,
                  TextStyle(color: ConstantColors.lightBlue),
                );
              },
            ),

            series: <CartesianSeries>[
              ColumnSeries<ChartData, String>(
                width: 0.7,
                spacing: 0.3,
                borderRadius: BorderRadius.circular(20),
                color: ConstantColors.mainGreen,

                dataSource: [
                  ChartData('Mon', 8),
                  ChartData('Tue', 3),
                  ChartData('Wed', 13),
                  ChartData('Thu', 2),
                  ChartData('Fri', 15),
                  ChartData('Sat', 4),
                  ChartData('Sun', 5),
                ],
                xValueMapper: (ChartData data, _) => data.week,
                yValueMapper: (ChartData data, _) => data.value,
              ),
              ColumnSeries<ChartData, String>(
                width: 0.7,
                spacing: 0.3,
                borderRadius: BorderRadius.circular(20),
                color: ConstantColors.lightBlue,

                dataSource: [
                  ChartData('Mon', 13),
                  ChartData('Tue', 7),
                  ChartData('Wed', 8),
                  ChartData('Thu', 9),
                  ChartData('Fri', 14),
                  ChartData('Sat', 2),
                  ChartData('Sun', 11),
                ],

                xValueMapper: (ChartData data, _) => data.week,
                yValueMapper: (ChartData data, _) => data.value,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
