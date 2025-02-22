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
          showSkipButton: true,
          skip: Text("ข้าม", style: TextStyle(color: Colors.black)),
          showNextButton: true,
          next: Icon(Icons.arrow_forward_ios, color: Colors.black),
          showDoneButton: true,
          done: Text("โทรเลย", style: TextStyle(color: Colors.black)),
          //? Navigator to SubAHomeUI
          onDone: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeUI()),
            );
          },
          scrollPhysics: ClampingScrollPhysics(),
        ),
      ),
    );
  }
}
