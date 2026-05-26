import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class AddexpenseView extends StatelessWidget {
  const AddexpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Expenses",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: ConstantColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 64, top: 33),
                      child: Text(
                        "Date",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                        top: 3,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: ConstantColors.lighGreen,
                          hintText: "Enter Date",
                          hintStyle: TextStyle(
                            fontFamily: "League Spartan",
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ConstantColors.mainGreen,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Icon(Icons.calendar_today_outlined),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 34,
                        left: 60,
                        bottom: 3,
                      ),
                      child: Text(
                        'Category',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ConstantColors.lighGreen, // light green
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          hint: const Text(
                            "Select Option",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "League Spartan",
                            ),
                          ),
                          icon: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF00D09E),
                            ),
                          ),
                          items: ["Brunch", "Lunch", "Dinner"]
                              .map(
                                (item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 34,
                        left: 60,
                        bottom: 3,
                      ),
                      child: Text(
                        'Expense Title',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                        top: 3,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: ConstantColors.lighGreen,
                          hintText: "Enter Expense Title",
                          hintStyle: TextStyle(
                            fontFamily: "League Spartan",
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 39,
                        left: 56,
                        right: 54,
                        bottom: 36,
                      ),
                      child: Container(
                        height: 166,
                        decoration: BoxDecoration(
                          color: ConstantColors.lighGreen,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Enter Message",
                            style: TextStyle(
                              color: ConstantColors.mainGreen,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 128,right: 128,bottom: 100),
                      child: ButtonWidget(onPressed: (){}, 
                      text: "Save", 
                      backgroundColor: ConstantColors.mainGreen),
                    )
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
