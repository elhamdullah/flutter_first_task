// pages/home_screen.dart
import 'package:flutter/material.dart';
import 'package:secondtask/widget/phone_call_button.dart';

import '../widget/button_click_screen.dart';
import '../widget/container_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Profile'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        backgroundColor: const Color(0xff215ee2),
        toolbarHeight: mediaquery.height * 0.1,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage("assets/images/logo.jpg"),
                    radius: mediaquery.width * 0.15,
                  ),
                  SizedBox(
                    width: mediaquery.width * 0.07,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: mediaquery.width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. John Doe",
                            style: TextStyle(
                              fontSize: mediaquery.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff517ac8),
                            ),
                          ),
                          Text(
                            "Dentist",
                            style: TextStyle(
                              fontSize: mediaquery.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: mediaquery.height * 0.01,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow.shade800),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontSize: mediaquery.width * 0.045,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaquery.height * 0.01),
                          Row(
                            children: [
                              const PhoneCallButton(
                                icon: Icons.phone,
                                label: "1",
                              ),
                              SizedBox(width: mediaquery.width * 0.03),
                              const PhoneCallButton(
                                icon: Icons.phone,
                                label: "2",
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "About",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

              ),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Text("professor john is aperfect doctor to handle and typye a medicine",style: TextStyle(fontSize: mediaquery.width*0.04),),
             ),
            const ContainerDetails(),
            SizedBox(height: mediaquery.height * 0.02,),

            const Divider(
              thickness: 2,
              endIndent: 30,
              indent: 30,
            ),

            const ContainerDetails(),

            SizedBox(height: mediaquery.height * 0.02,),

            ButtonClickScreen(
              icon: Icons.chat_bubble_outline,
              color: Color(0xff4ab14e),
              label: "Chat with Doctor",
            ),
            SizedBox(height: mediaquery.height * 0.01,),
            ButtonClickScreen(
              color: Color(0xff205ee3),
              label: "Book Appointment",
            ),



          ],
        ),
      ),
    );
  }
}
