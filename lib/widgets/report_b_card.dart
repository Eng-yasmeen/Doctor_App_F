import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReportBCard extends StatelessWidget {
  const ReportBCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0x0ffDEF1F8),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Heart Rate",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "96",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text("bpm", style: TextStyle(fontSize: 10))
                    ],
                  )
                ],
              ),
              Icon(
                FontAwesomeIcons.heartPulse,
                size: 90,
              )
            ],
          ),
        ),
      ),
    );
  }
}
