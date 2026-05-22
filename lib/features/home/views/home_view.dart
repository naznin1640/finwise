import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/home/views/account_balance_view.dart';
import 'package:finwise/features/home/views/quick_analysis_view.dart';
import 'package:finwise/features/home/widgets/tabbar_view.dart';
import 'package:finwise/features/profile/view/profile_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Welcome Back",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              "Good Morning",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountBalanceView(),
                    ),
                  );
                },
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
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
                          decoration: BoxDecoration(
                            color: ConstantColors.white,
                          ),
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
              padding: const EdgeInsets.only(top: 10),
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
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Container(
                width: 430,
                decoration: BoxDecoration(
                  color: ConstantColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(36),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuickAnalysisView(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ConstantColors.mainGreen,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/images/Ellipse 182.png",
                                        ),
                                        Positioned(
                                          left: 31,
                                          child: Image.asset(
                                            "assets/images/Ellipse 183.png",
                                          ),
                                        ),
                                        Positioned(
                                          top: 20,
                                          left: 13,
                                          child: Image.asset(
                                            "assets/images/Car.png",
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Savings\non Goal",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 108,
                                decoration: BoxDecoration(
                                  color: ConstantColors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                        ),
                                        child: Image.asset(
                                          "assets/images/Salary.png",
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: Image.asset(
                                          "assets/images/Food.png",
                                        ),
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
                      ),
                    ),
                    DefaultTabController(
                      length: 3,
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 240,
                              child: Expanded(
                                child: TabBarView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: TabbarView(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: TabbarView(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: TabbarView(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
