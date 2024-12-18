import 'package:doctor_app/widgets/buttom_nav_bar.dart';
import 'package:doctor_app/widgets/card.dart';
import 'package:doctor_app/widgets/desc.dart';
import 'package:doctor_app/widgets/form_field.dart';
import 'package:doctor_app/widgets/uocomong_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Martin Shah",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              clipBehavior: Clip.antiAlias,
              child: const Image(
                image: AssetImage("images/Untitled.jpg"),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextFiled(),
              const Text(
                "Service",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServiceCard(
                      color: const Color(0xffd3e3f0),
                      icon: FontAwesomeIcons.userDoctor,
                      iconColor: const Color(0xff2c6586),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ServiceCard(
                      color: const Color(0xffebe5d4),
                      icon: FontAwesomeIcons.capsules,
                      iconColor: const Color(0xffd99f1e),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ServiceCard(
                      color: const Color(0xffcbeff6),
                      icon: FontAwesomeIcons.clipboard,
                      iconColor: const Color(0xff0f97a8),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ServiceCard(
                      color: const Color(0xffe7d8dd),
                      icon: FontAwesomeIcons.virus,
                      iconColor: const Color(0xffb699a8),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ServiceCard(
                      color: const Color(0xffE3D1D1),
                      iconColor: Colors.red,
                      icon: CupertinoIcons.heart_fill,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Desc(),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Upocoming Appointments",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UocomingCard(
                      bColor: const Color(0xff58b4c9),
                      sColor: const Color(0xff2d8ea1),
                      date: "12",
                      day: "Thu",
                      line1: "09:00 am",
                      line2: "Dr. Mem Akhter",
                      line3: "Depression",
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    UocomingCard(
                      bColor: const Color(0xffeba25d),
                      sColor: const Color(0xffcf7a2a),
                      date: "13",
                      day: "Fri",
                      line1: "05:30 am",
                      line2: "Dr. Mem Akhter",
                      line3: "Depression",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
