import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: const Icon(FontAwesomeIcons.sliders,  color: Colors.black54,),
        fillColor: const Color(0xffe8eaee),
        filled: true,
        hintText: "Search",
        hintStyle: const TextStyle(
          color: Color(0xffa2a7a9),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide:   const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
