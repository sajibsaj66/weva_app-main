import 'package:flutter/material.dart';
import 'package:weva_app/screens/tab_screens/Aboutus.dart';
import 'package:weva_app/screens/tab_screens/BillInfo.dart';
import 'package:weva_app/screens/tab_screens/Fev_page.dart';
import 'package:weva_app/screens/tab_screens/health_screen.dart';
import 'package:weva_app/screens/tab_screens/Filter.dart';
import 'package:weva_app/screens/tab_screens/Nearby.dart';
import 'package:weva_app/screens/tab_screens/Notification.dart';
import 'package:weva_app/screens/tab_screens/Pay.dart';
import 'package:weva_app/screens/tab_screens/Reservation.dart';
import 'package:weva_app/screens/tab_screens/ServicePageOne.dart';
import 'package:weva_app/screens/tab_screens/ServicePageProvider.dart';
import 'package:weva_app/screens/tab_screens/cardfile.dart';
import 'package:weva_app/screens/tab_screens/home_product.dart';
import 'package:weva_app/screens/tab_screens/salon_screen.dart';
import 'package:weva_app/screens/tab_screens/ServiceProviderPage.dart';

class NavHomeScreen extends StatefulWidget {
  @override
  _NavHomeScreenState createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  List<String> categoris = [
    "Home",
    "Salon",
    "Health",
    "Fitness",
    "Beauty",
    "Physical"
  ];

  List listOfPage = [
    HomeProduct(),
    SalonScreen(),
    HealthScreen(),
    HealthScreen(),
    Cardfile(),
    ServiceProviderPage(),
    ServicePageeOne(),
    ServicePageProvider(),
    Pay(),
    Filter(),
    BillInfo(),
    Reservation(),
    Noti(),
    Fpage(),
    PageAboutUS(),
    Nearby(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: categoris.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 3,
                        width: 40,
                        color: selectedIndex == index
                            ? Colors.red
                            : Colors.transparent,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        categoris[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 3,
                        width: 40,
                        color: selectedIndex == index
                            ? Colors.red
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
