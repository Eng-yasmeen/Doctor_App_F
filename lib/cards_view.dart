import 'package:doctor_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.searchengin,
              color: Color(0xff168aa5),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Doctors contact',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff168aa5),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/young-beautiful-doctor-wearing-stethoscope-her-neck-removebg-preview.png",height: 100,width: 100),
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/portrait-female-doctor-wearing-glasses-removebg-preview.png",height: 100,width: 100),
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/portrait-smiling-handsome-male-doctor-man (2).png",height: 100,width: 100),
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/result (2).png",height: 100,width: 100),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/smiling-doctor-with-strethoscope-isolated-grey-removebg-preview.png",height: 100,width: 100),
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/result (1).png",height: 100),
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/nurse-with-stethoscope-white-medical-uniform-white-protective-sterile-mask (1).png",height: 100,width: 100),
                    CustomCard(img: "images/PNG IMAGE/PNG IMAGE/CARDS/healthcare-workers-medical-insurance-pandemic-covid-19-concept-handsome-smiling-doctor-white-coat-gl (1).png",height: 100,width: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
