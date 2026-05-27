import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  Future<void> openLink() async {
    final Uri url = Uri.parse("www.finwiseapp.de");

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Terms And Conditions",
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
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            decoration: BoxDecoration(
              color: ConstantColors.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),

            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 37, top: 37, right: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Est fugiat assumenda aut reprehenderit",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.justify,
                      """
Lorem ipsum dolor sit amet. Et odio officia aut voluptate internos est omnis vitae ut architecto sunt non tenetur fuga ut provident vero. Quo aspernatur facere et consectetur ipsum et facere corrupti est asperiores facere. Est fugiat assumenda aut reprehenderit voluptatem sed.
            
1. Ea voluptates omnis aut sequi sequi.
2. Est dolore quae in aliquid ducimus et autem repellendus.
3. Aut ipsum Quis qui porro quasi aut minus placeat!
4. Sit consequatur neque ab vitae facere.
            
Aut quidem accusantium nam alias autem eum officiis placeat et omnis autem id officiis perspiciatis qui corrupti officia eum aliquam provident. Eum voluptas error et optio dolorum cum molestiae nobis et odit molestiae quo magnam impedit sed fugiat nihil non nihil vitae.
      
•  Aut fuga sequi eum voluptatibus provident.
•  Eos consequuntur voluptas vel amet eaque aut dignissimos velit.
            
Vel exercitationem quam vel eligendi rerum At harum obcaecati et nostrum beatae? Ea accusantium dolores qui rerum aliquam est perferendis mollitia et ipsum ipsa qui enim autem At corporis sunt. Aut odit quisquam est reprehenderit itaque aut accusantium dolor qui neque repellat.
            """,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Text(
                        "Read the terms and conditions in more detail at",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: openLink,
                      child: Text(
                        "www.finwiseapp.de",
                        style: TextStyle(
                          color: ConstantColors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: ConstantColors.blue,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text("I accept all the terms and conditions",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300
                        ),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,right: 70, bottom: 17),
                      child: ButtonWidget(onPressed: (){}, 
                      text: "Accept", 
                      backgroundColor: ConstantColors.mainGreen),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
