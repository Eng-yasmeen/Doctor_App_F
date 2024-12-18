import 'package:flutter/material.dart';

class ReportSCards extends StatelessWidget {
  ReportSCards(
      {super.key,
        this.text1,
        this.text2,
        this.text3,
        this.icon,
        this.color,
        this.iconColor,
        this.fontsize});

  String? text1;
  String? text2;
  String? text3;
  IconData? icon;
  Color? color;
  Color? iconColor;
  double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: color!, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              width: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  size: 20,
                  icon!,
                  color: iconColor!,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                )
              ],
            ),
            Text(
              text1!,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  text2!,
                  style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  text3!,
                  style:
                  TextStyle(fontSize: fontsize!, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
