import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/view/settings/delete_account_view.dart';
import 'package:finwise/features/profile/view/settings/notification_settings.dart';
import 'package:finwise/features/profile/view/settings/password_settings.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
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
                      padding: const EdgeInsets.only(top: 70, left: 31),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationSettings()));
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: ConstantColors.mainGreen,
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: ConstantColors.iconclr,
                                  ),
                                ),
                              ),
                              Text(
                                "Notification Settings",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins"
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 31),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordSettings()));
                        },
                        child: SizedBox(
                          child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: ConstantColors.mainGreen,
                                    child: Icon(
                                      Icons.key_outlined,
                                      color: ConstantColors.iconclr,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Password Security",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins"
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 111),
                                  child: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                )
                              ],
                            ),
                        ),
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 31, bottom: 500),
                       child: InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => DeleteAccountView()));
                        },
                         child: SizedBox(
                           child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: ConstantColors.mainGreen,
                                      child: Icon(
                                        Icons.person,
                                        color: ConstantColors.iconclr,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Delete Account",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins"
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 135),
                                    child: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                  )
                                ],
                              ),
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
