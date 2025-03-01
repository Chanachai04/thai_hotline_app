import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:thai_hotline_app/views/sub_d_home_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //? เอาไว้เก็บ widget ที่จะแสดงใน body
  List<Widget> viewInBody = [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];
  //? เอาไว้ที่จะแสดงหน้าจอที่ต้องการแสดง อันดับแรก
  final NotchBottomBarController _pageController = NotchBottomBarController(
    index: 0,
  );
  //? เอาไว้เก็บ index ที่จะแสดง
  int indexShow = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('สายด่วน THAILAND', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: [
          //? แสดง icon ไปยังหน้า about
          IconButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUI()),
                ),
            icon: Icon(FontAwesomeIcons.circleInfo, color: Colors.white),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        onTap: (valueParam) {
          //? set ค่า indexShow ให้เท่ากับค่า valueParam
          setState(() {
            indexShow = valueParam;
          });
        },
        kIconSize: 20,
        kBottomRadius: 20,
        notchColor: Colors.lightBlueAccent,
        color: Colors.lightBlue,
        notchBottomBarController: _pageController,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Icon(
              FontAwesomeIcons.personWalkingLuggage,
              color: Colors.white,
            ),
            activeItem: Icon(
              FontAwesomeIcons.personWalkingLuggage,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: Icon(
              FontAwesomeIcons.truckMedical,
              color: Colors.white,
            ),
            activeItem: Icon(
              FontAwesomeIcons.truckMedical,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: Icon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.white,
            ),
            activeItem: Icon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: Icon(FontAwesomeIcons.seedling, color: Colors.white),
            activeItem: Icon(FontAwesomeIcons.seedling, color: Colors.white),
          ),
        ],
      ),
      body: viewInBody[indexShow],
    );
  }
}
