import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({this.img,this.height,this.width});
  String? img;
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0,bottom: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            color: const Color(0xffeeece7),
            semanticContainer: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dr.Steven Jak",
                    style: TextStyle(
                        color: Color(0xff168aa5),
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Internist",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff168aa5)
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.call),
                        color: const Color(0xff168aa5),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 35,
            top: -80,
            child: Image.asset(
              img!,
              height: height!,
              width: width,
            ),
          )
        ],
      ),
    );
  }
}