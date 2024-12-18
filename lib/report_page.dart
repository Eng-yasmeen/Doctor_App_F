import 'package:doctor_app/widgets/buttom_nav_bar.dart';
import 'package:doctor_app/widgets/latest_report.dart';
import 'package:doctor_app/widgets/report_b_card.dart';
import 'package:doctor_app/widgets/report_s_cards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Report',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ReportBCard(),
            Row(
              children: [
                Expanded(
                  child: ReportSCards(
                    color: const Color(0xffE3D1D1),
                    fontsize: 20,
                    icon: FontAwesomeIcons.droplet,
                    iconColor: Colors.red,
                    text1: "Blood Groub",
                    text2: "A",
                    text3: "+",
                  ),
                ),
                Expanded(
                  child: ReportSCards(
                    color: const Color(0xffE2F9E6),
                    fontsize: 10,
                    icon: FontAwesomeIcons.weightScale,
                    iconColor: Colors.green,
                    text1: "Weight",
                    text2: "80",
                    text3: "kg",
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Lattest Report",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            LatestReport(
              backGrundIcon: const Color(0xffD1E0EB),
              iconColor: const Color(0xff266485),
              text1: "General Health",
              text2: "8 files",
            ),
            LatestReport(
              backGrundIcon: const Color(0xffE5D8F1),
              iconColor: const Color(0xff390652),
              text1: "Diabetes",
              text2: "4 files",
            ),
            CustomBottomNavBar(),
          ],
        ),),
    );
  }
}
