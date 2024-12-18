import 'package:flutter/material.dart';

class Desc extends StatelessWidget {
  const Desc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffeeece7),
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage(
                "images/PNG IMAGE/PNG IMAGE/docg-removebg-preview.png"),
            fit: BoxFit.fill),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get the best\n medical service",
                  style: TextStyle(
                      color: Color(0xff285877),
                      //0xff2f5655
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                    "All day 24H",
                    style: TextStyle(color: Color(0xff285877)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
