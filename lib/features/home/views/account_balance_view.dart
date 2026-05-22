import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/home/widgets/tabbar_view.dart';
import 'package:flutter/material.dart';

class AccountBalanceView extends StatelessWidget {
  const AccountBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account Balance",
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 29, left: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: ConstantColors.white,
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
                    color: ConstantColors.white,
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, bottom: 33),
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
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: ConstantColors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 37,
                      bottom: 34,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ConstantColors.textClr,
                              fontFamily: "League Spartan",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 37),
                    child: TabbarView(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 37),
                    child: Row(
                      spacing: 10,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: ConstantColors.oceanBlue,
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Image.asset(
                                "assets/vectors/transport.png",
                                color: ConstantColors.white,
                                height: 22,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Transport",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "9:30 - April 08",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ConstantColors.oceanBlue,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: ConstantColors.mainGreen,
                            height: 35,
                            width: 1,
                          ),
                        ),
                        Text(
                          "Fuel",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            color: ConstantColors.mainGreen,
                            height: 35,
                            width: 1,
                          ),
                        ),
                        Text(
                          "-₹4,13",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: ConstantColors.oceanBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
