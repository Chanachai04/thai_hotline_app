import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_d_introduction_call_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: IntroductionScreen(
          pages: [
            PageViewModel(title: '', bodyWidget: SubAIntroductionCallUI()),
            PageViewModel(title: '', bodyWidget: SubBIntroductionCallUI()),
            PageViewModel(title: '', bodyWidget: SubCIntroductionCallUI()),
            PageViewModel(title: '', bodyWidget: SubDIntroductionCallUI()),
          ],
          //? ตกแต่ง dot ด้านล่าง
          dotsDecorator: DotsDecorator(
            size: Size.square(10.0),
            activeSize: Size(20.0, 10.0),
            activeColor: Colors.lightBlue,
            color: Colors.lightBlue,
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          showSkipButton: true,
          skip: Text(
            "ข้าม",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          showNextButton: true,
          next: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
          showDoneButton: true,
          done: Text(
            "โทรเลย",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          //? ตกแต่ง animation เปลี่ยนหน้า
          animationDuration: 400,
          //? ตกแต่ง background
          globalBackgroundColor: Colors.white,
          //? Navigator to HomeUI
          onDone: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeUI()),
            );
          },
        ),
      ),
    );
  }
}
