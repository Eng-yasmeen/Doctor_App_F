import 'package:doctor_app/cards_view.dart';
import 'package:doctor_app/home.dart';
import 'package:doctor_app/report_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onTapped(int index) {
      setState(() {
        selectedIndex = index;
        if (selectedIndex == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CardsView()),
          );
        } else if (selectedIndex == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ReportPage()),
          );
        }
        else if (selectedIndex == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        }
      });
    }

    return SizedBox(
      height: 70,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xff168aa5),
                ),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.userDoctor,
                  color: Color(0xff168aa5),
                ),
                label: 'Doctors',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.clipboard,
                  color: Color(0xff168aa5),
                ),
                label: 'Reports',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Color(0xff168aa5)),
                label: 'Notifications',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time, color: Color(0xff168aa5)),
                label: 'sessions time',
                backgroundColor: Colors.white),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xff168aa5),
          onTap: onTapped,
        ),
      ),
    );
  }
}
