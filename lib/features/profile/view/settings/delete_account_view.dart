import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:finwise/features/profile/view/settings/settings_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Delete Account",
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
              topRight: Radius.circular(60),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 34),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Are you sure you want to delete\nyour account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 24,
                  bottom: 36,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: ConstantColors.lighGreen,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                          left: 25,
                          right: 25,
                        ),
                        child: Text(
                          "This action will permanently delete all of your data, and you will not be able to recover it. Please keep the following in mind before proceeding:",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 28,
                          right: 25,
                          top: 17,
                          bottom: 10,
                        ),
                        child: Text(
                          "• All your expenses, income and associated transactions will be eliminated.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 25,
                          bottom: 10,
                        ),
                        child: Text(
                          "• You will not be able to access your account or any related information.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, bottom: 20),
                        child: Text(
                          "• This action cannot be undone.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Please Enter Your Password To Confirm\nDeletion Of Your Account.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(37),
                child: TextformWidget(
                  hintText: "●●●●●●●●",
                  suffix: Icon(CupertinoIcons.eye_solid),
                ),
              ),
              ButtonWidget(
                onPressed: () {
                  
                },
                text: "Yes, Delete Account",
                backgroundColor: ConstantColors.mainGreen,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: "Cancel",
                  backgroundColor: ConstantColors.lighGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
