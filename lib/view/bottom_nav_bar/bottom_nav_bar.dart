import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';
import 'package:flutter_clone_book/view/homescreen/homescreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;
  List screens = [
    Homescreen(),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.brown,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor:ColorConstants.PRIMARY_COLOR ,
        unselectedItemColor: ColorConstants.GREY_COLOR,
        onTap: (value) {
          currentindex = value;
          setState(() {
            
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                ImageConstants.my_icon_inactive,
                width: 34,
                height: 34,
              ),
              activeIcon: Image.asset(
                ImageConstants.my_icon_active,
                width: 34,
                height: 34,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_camera_back,
                color: ColorConstants.GREY_COLOR,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.video_camera_back,
                color: ColorConstants.PRIMARY_COLOR,
                size: 30,
              ),
              label: 'Movies'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_activity,
                color: ColorConstants.GREY_COLOR,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.local_activity,
                color: ColorConstants.PRIMARY_COLOR,
                size: 30,
              ),
              label: 'Live Events'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: ColorConstants.GREY_COLOR,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.person,
                color: ColorConstants.PRIMARY_COLOR,
                size: 30,
              ),
              label: 'Profile'),
        ]);
  }
}
