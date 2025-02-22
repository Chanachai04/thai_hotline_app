import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
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
  List<Widget> viewInBody = [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];

  int indexShow = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สายด่วน THAILAND'),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.error_outline_rounded)),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: indexShow,
        onTap:
            (value) => setState(() {
              indexShow = value;
            }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.car_crash),
            title: Text("การเดินทาง"),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.local_hospital),
            title: Text("อุบัติเหตุ-เหตุฉุกเฉิน"),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.attach_money),
            title: Text("ธนาคาร"),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.people_outline),
            title: Text("สาธารณูประโภค"),
          ),
        ],
      ),
      body: viewInBody[indexShow],
    );
  }
}
