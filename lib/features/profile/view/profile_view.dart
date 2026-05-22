import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/widgets/container_widgets.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
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
      body: Stack(
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
                        padding: const EdgeInsets.only(top: 52),
                        child: SizedBox(
                          child: Column(
                            spacing: 34,
                            children: [
                              ContainerWidgets(
                                icon: Icon(Icons.person_outline_rounded,
                                color: ConstantColors.backgroundColor,size: 28,),
                                 text: "Edit profile"),

                                 ContainerWidgets(
                                  icon: Icon(Icons.security_outlined, color: ConstantColors.backgroundColor,), 
                                  text: "Security"),
                                  ContainerWidgets(icon: 
                                  Icon(Icons.settings, color: ConstantColors.backgroundColor, size: 28,),
                                   text: "Settings"),
                                   ContainerWidgets(
                                    icon: Icon(Icons.help_center, color: ConstantColors.backgroundColor,size: 28,),
                                     text: "Help"),
                                     ContainerWidgets(
                                      icon: Icon(Icons.logout, color: ConstantColors.backgroundColor,size: 28,), 
                                      text: "Log out")
                            ],
                          ),
                        ),
                      )
                    ],
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
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/Ellipse 192.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
