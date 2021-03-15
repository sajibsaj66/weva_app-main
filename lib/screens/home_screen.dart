import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'bottomNavScreens/nav_home.dart';
import 'bottomNavScreens/nav_notification_screen.dart';
import 'bottomNavScreens/near_Screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List listOfPage = [
    NavHomeScreen(),
    NavNotificationScreen(),
    NearScreen(),
    NavNotificationScreen(),
    NavNotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/wevaicon.png",
            fit: BoxFit.cover, height: 50, width: 70),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => showGeneralDialog(
            barrierLabel: "Barrier",
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0.5),
            transitionDuration: Duration(milliseconds: 300),
            context: context,
            pageBuilder: (_, __, ___) {
              return buildListView();
            },
            transitionBuilder: (_, anim, __, child) {
              return SlideTransition(
                position:
                    Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
                child: child,
              );
            },
          ),
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {}),
        ],
      ),
      body: listOfPage[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.black38,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.favorite, color: Colors.white, size: 30),
          Icon(Icons.add_alert, color: Colors.white, size: 30),
          Icon(Icons.hotel, color: Colors.white, size: 30),
          Icon(Icons.inbox, color: Colors.white, size: 30),
          Icon(Icons.menu, color: Colors.white, size: 30),
        ],
        index: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }

  Widget buildListView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Scaffold(
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                print("Profile");
              },
              leading: Icon(
                Icons.markunread,
                color: Colors.green,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cake,
                color: Colors.pink,
              ),
              onTap: () {
                print("Eva points");
              },
              title: Text(
                "Eva Points",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.call_end,
                color: Colors.teal,
              ),
              title: Text(
                "My reservation",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              title: Text(
                "Notifications",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.verified_user,
                color: Colors.green,
              ),
              title: Text(
                "User Directory",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.green,
              ),
              title: Text(
                "About us",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.all_out,
                color: Colors.red,
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<String> Category = ['Restaurant', 'Waiter', 'Chef', 'Branch'];
//   String _selectedcategory;

//   bool button_state = false;
//   bool isVisible = true;

//   Widget category() {
//     return Container(
//       padding: EdgeInsets.all(10),
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         color: Colors.white70,
//         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//       ),
//       child: DropdownButtonFormField(
//         decoration: InputDecoration(
//             fillColor: Colors.white70,
//             enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white))),
//         dropdownColor: Colors.white70,
//         focusColor: Colors.white70,
//         isExpanded: true,
//         value: _selectedcategory,
//         hint: Text(
//           "User Category",
//           style: TextStyle(fontFamily: "Poppins"),
//         ),
//         onChanged: (new_value) {
//           setState(() {
//             _selectedcategory = new_value;
//             print(_selectedcategory);
//           });
//           /* print((pay_type.indexOf(_selectedMbank)+1).toString());
//           type = (pay_type.indexOf(_selectedMbank)+1).toString();*/
//         },
//         items: Category.map((e) {
//           return DropdownMenuItem(
//             child: Text(e),
//             value: e,
//           );
//         }).toList(),
//       ),
//     );
//   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 4,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           leading: GestureDetector(
// //             onTap: () {
// //               // Navigator.of(context).pushNamedAndRemoveUntil(
// //               //     FIRST_PAGE, (Route<dynamic> route) => false);
// //             },
// //             child: Padding(
// //               padding: EdgeInsets.all(10),
// //               child: Container(
// //                 alignment: Alignment.topLeft,
// //                 height: MediaQuery.of(context).size.height,
// //                 child: Icon(
// //                   Icons.cancel_outlined,
// //                   color: Colors.black,
// //                   size: 3,
// //                   //  * SizeConfig.heightMultiplier,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           toolbarHeight: 30,
// //           // * SizeConfig.heightMultiplier,
// //           elevation: 0,
// //           backgroundColor: Colors.white,
// //           title: Container(
// //             alignment: Alignment.center,
// //             child: Text("Test Text"),
// //           ),
// //           bottom: TabBar(
// //             indicatorColor: Colors.white,
// //             unselectedLabelColor: Colors.red,
// //             indicatorSize: TabBarIndicatorSize.label,
// //             labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
// //             indicator: BoxDecoration(
// //                 color: Colors.red, borderRadius: BorderRadius.circular(50.0)),
// //             tabs: <Widget>[
// //               Tab(
// //                 child: Container(
// //                     padding: EdgeInsets.all(1),
// //                     decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(50),
// //                         border: Border.all(
// //                           color: Colors.red,
// //                         )),
// //                     child: Align(
// //                       alignment: Alignment.center,
// //                       child: Text(
// //                         "Restaurant",
// //                         style: TextStyle(
// //                             color: Colors.black,
// //                             fontSize: 1.7,
// //                             //  * SizeConfig.textMultiplier,
// //                             fontWeight: FontWeight.w700),
// //                       ),
// //                     )),
// //               ),
// //               Tab(
// //                 child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border.all(
//                           color: Colors.red,
//                           width: 1,
//                         )),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Branch",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 1.7,
//                             // * SizeConfig.textMultiplier,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     )),
//               ),
//               Tab(
//                 child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border.all(
//                           color: Colors.red,
//                           width: 1,
//                         )),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Waiter",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 1.7,
//                             // * SizeConfig.textMultiplier,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     )),
//               ),
//               Tab(
//                 child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border.all(
//                           color: Colors.red,
//                           width: 1,
//                         )),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Chef",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 1.7,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     )),
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(children: [
//           Container(
//             height: 500,
//             color: Colors.red,
//             child: Text("Text"),
//           ),
//           Container(
//             height: 500,
//             color: Colors.red,
//             child: Text("Text1"),
//           ),
//           Container(
//             height: 500,
//             color: Colors.red,
//             child: Text("Text"),
//           ),
//           Container(
//             height: 500,
//             color: Colors.red,
//             child: Text("Text"),
//           ),
//         ]),
//       ),
//     );
//   }
