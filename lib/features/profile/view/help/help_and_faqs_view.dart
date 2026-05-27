import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/view/help/contact_us_view.dart';
import 'package:finwise/features/profile/view/help/faq_view.dart';
import 'package:flutter/material.dart';

class HelpAndFaqsView extends StatelessWidget {
  const HelpAndFaqsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Help & FAQS",
          style: TextStyle(
            color: ConstantColors.textClr,
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
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
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          decoration: BoxDecoration(
            color: ConstantColors.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 14,left: 40,right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Text("How Can We Help You?", style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),)),
                DefaultTabController(
                      length: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
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
                                  Tab(text: "FAQ"),

                                  Tab(text: "Contact Us"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 600,
                              child: Expanded(
                                child: TabBarView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: FaqView(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: ContactUsView(),
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
      ),
    );
  }
}