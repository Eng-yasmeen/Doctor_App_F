import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  ServiceCard({super.key,this.color,this.icon,this.iconColor});

  Color? color;
  IconData? icon;
  Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: color!,borderRadius: BorderRadius.circular(16)),
      child: Center(child: Icon(icon!,color: iconColor,)),
    );
  }
}
