import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:finwise/features/profile/provider/theme_notifier.dart';
import 'package:finwise/features/profile/widgets/switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditprofileView extends ConsumerWidget {
  const EditprofileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  

    final themeMode = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit My Profile",
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
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 90),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ConstantColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 76),
                            child: Center(
                              child: Text(
                                "John Smith",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: ConstantColors.darkGreen,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "ID: 25030024",
                              style: TextStyle(
                                color: ConstantColors.darkGreen,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(38),
                            child: Text(
                              "Account Settings",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 38,
                              bottom: 12,
                            ),
                            child: Text(
                              "Username",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, right: 35),
                            child: TextformWidget(hintText: "John Smith"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35,
                              right: 35,
                              top: 17,
                              bottom: 12,
                            ),
                            child: Text(
                              "Phone",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, right: 35),
                            child: TextformWidget(hintText: "+44 555 5555 55"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35,
                              right: 35,
                              top: 17,
                              bottom: 12,
                            ),
                            child: Text(
                              "Email Address",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, right: 35),
                            child: TextformWidget(
                              hintText: "example@example.com",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 38, top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Push Notification",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                               SwitchWidget()
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 38, top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Turn Dark Theme",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Switch(
                                  activeTrackColor: ConstantColors.mainGreen,
                                  activeThumbColor: ConstantColors.lighGreen,
                                  inactiveThumbColor: ConstantColors.white,
                                  inactiveTrackColor: ConstantColors.mainGreen,

                                  value: themeMode == ThemeMode.dark,
                                  onChanged: (value) {
                                    ref
                                        .read(themeProvider.notifier)
                                        .toggleTheme();
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 110,
                              right: 110,
                            ),
                            child: ButtonWidget(
                              onPressed: () {},
                              text: "Update Profile",
                              backgroundColor: ConstantColors.mainGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 140,
              top: 32,
              child: Padding(
                padding: const EdgeInsets.only(left: 157),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        "assets/images/Ellipse 192.png",
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 70,
                      child: CircleAvatar(
                        backgroundColor: ConstantColors.mainGreen,
                        radius: 21,
                        child: Icon(
                          size: 25,
                          Icons.camera_alt_outlined,
                          color: ConstantColors.iconclr,
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
