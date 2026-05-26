import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/categories/view/food_view.dart';
import 'package:finwise/features/categories/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class Categoriesview extends StatelessWidget {
  const Categoriesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Categories",
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
          SizedBox(
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
              ),
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 33, left: 37),
                        child: CategoryWidget(
                          ontap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FoodView()));
                          },
                          image: Padding(
                          padding: const EdgeInsets.only(top: 22, left: 30, bottom: 22, right: 30),
                          child: Image.asset("assets/images/Food.png", color: ConstantColors.backgroundColor,width: 30,height:54),
                        ), text: 'Food',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 33),
                        child: CategoryWidget(
                          ontap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => FoodView()));
                          },
                          image:Padding(
                            padding: const EdgeInsets.only(top: 26, left: 30, bottom: 26, right: 30),
                            child: Image.asset("assets/vectors/transport.png", height: 45, width: 44,),
                          ) , text: 'Transport',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 33, right: 30),
                        child: CategoryWidget(
                          image:Padding(
                            padding: const EdgeInsets.only(top: 26, left: 30, bottom: 26, right: 30),
                            child: Image.asset("assets/vectors/medicine.png", height: 46, width: 35,),
                          ) , text: 'Medicine',),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 33, left: 37),
                        child: CategoryWidget(image: Padding(
                          padding: const EdgeInsets.only(top: 22, left: 30, bottom: 22, right: 30),
                          child: Image.asset("assets/vectors/image.png", color: ConstantColors.backgroundColor,height: 53, width: 32,),
                        ), text: 'Groceries',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 33),
                        child: CategoryWidget(
                          image:Padding(
                            padding: const EdgeInsets.only(top: 26, left: 30, bottom: 26, right: 30),
                            child: Image.asset("assets/vectors/iconRent.png", height: 40,width: 47,),
                          ) , text: 'Rent',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 33, ),
                        child: CategoryWidget(
                          image:Padding(
                            padding: const EdgeInsets.only(top: 26, left: 35, bottom: 26, right: 29),
                            child: Image.asset("assets/vectors/gift.png", height: 35,),
                          ) , text: 'Gift',),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 33, left: 37),
                        child: CategoryWidget(image: Padding(
                          padding: const EdgeInsets.only(top: 22, left: 32, bottom: 22, right: 32),
                          child: Image.asset("assets/vectors/savings.png", color: ConstantColors.backgroundColor,height: 39,width: 41,),
                        ), text: 'Savings',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 33),
                        child: CategoryWidget(
                          image:Padding(
                            padding: const EdgeInsets.only(top: 26, left: 30, bottom: 26, right: 30),
                            child: Image.asset("assets/vectors/entertainment.png", height: 35,),
                          ) , text: 'Entertainment',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 33, ),
                        child: CategoryWidget(
                          image:Padding(
                            padding: const EdgeInsets.only(top: 26, left: 35, bottom: 26, right: 30),
                            child: Image.asset("assets/vectors/more.png", height: 35,),
                          ) , text: 'More',),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
