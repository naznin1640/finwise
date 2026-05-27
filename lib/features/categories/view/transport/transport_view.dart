import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/features/categories/view/addexpense_view.dart';
import 'package:finwise/features/categories/widgets/transport_widget.dart';
import 'package:flutter/material.dart';

class TransportView extends StatelessWidget {
  const TransportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Transport",
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
      body: SafeArea(child: 
      Column(
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
            Expanded(child: 
            Container(
              decoration: BoxDecoration(
                color: ConstantColors.backgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 37,right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(
                            top: 28,
                           
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "March",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ConstantColors.mainGreen,
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Icon(Icons.calendar_today_outlined),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 31),
                          child: TransportWidget(
                            color: ConstantColors.oceanBlue, 
                            title: "Fuel", 
                            subtitle: "18:27 - March 30", 
                            price: "-₹3.53"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 21),
                          child: TransportWidget(
                            color: ConstantColors.lightBlue, 
                            title: "car parts",
                            subtitle: "15:00 - March 30", 
                            price: "-₹26.75"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17, bottom: 17),
                          child: Text("February",
                           style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),),
                        ),
                        TransportWidget(
                          color: ConstantColors.oceanBlue, 
                          title: "New Tires", 
                          subtitle: "12:47 - February 10",
                           price: "-₹373.99"),
                           Padding(
                             padding: const EdgeInsets.only(top: 23),
                             child: TransportWidget(
                              color:ConstantColors.lightBlue , 
                              title: "Car wash", 
                              subtitle: "9:30 - February 09", 
                              price: "-₹9,74"),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 23),
                             child: TransportWidget(
                              color:ConstantColors.oceanBlue , 
                              title: "Public Transport", 
                              subtitle: "7:50 - February 01", 
                              price: "-₹1,24"),
                           ),
                            Padding(
                        padding: const EdgeInsets.only(left: 70,top: 20,right: 80),
                        child: ButtonWidget(  
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                             AddexpenseView(option1: 'Car wash', option2: 'Fuel', option3: 'Car Parts',)));
                          }, 
                        text: "Add Expenses", 
                        backgroundColor: ConstantColors.mainGreen,
                        fontSize: 15,),
                      )
                  ],
                ),
              ),
            ))
        ],
      )) ,
    );
  }
}