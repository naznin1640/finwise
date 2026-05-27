import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/widgets/switch_widget.dart';
import 'package:flutter/material.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification Settings",
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
            borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
          ),
          child: Flexible(
            child: 
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("General Notification", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Sounds", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Sound Call", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Vibrate", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Transaction Update", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Expense Reminder", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Budget Notification", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Low Balance Alert", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    SwitchWidget()
                  ],
                ),
            ],),
          )),
        ),
      ),
    );
  }
}


