import 'package:flutter/material.dart';

class UocomingCard extends StatelessWidget {
  UocomingCard({super.key,this.bColor,this.sColor,this.date,this.day,this.line1,this.line2,this.line3});

  Color?bColor;
  Color?sColor;
  String? date;
  String? day;
  String? line1;
  String? line2;
  String? line3;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: bColor! ,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: sColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( date!,style: const TextStyle(color: Colors.white),),
                  Text( day!,style: const TextStyle(color: Colors.white),)
                ],
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              children: [
                Text("$line1",style: const TextStyle(color: Colors.white),),
                Text("$line2",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                Text("$line3",style: const TextStyle(color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
