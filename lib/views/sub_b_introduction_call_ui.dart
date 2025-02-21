import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SubBIntroductionCallUi {
  static List<PageViewModel> getPages(BuildContext context) {
    return [
      //? Page view สายด่วน อุบัติเหตุ
      PageViewModel(
        //? Text อุบัติเหตุ.....
        titleWidget: Text.rich(
          TextSpan(
            text:
                'อุบัติเหตุ ป่วยฉุกเฉิน  ไฟใหม้\nรถหาย สัตว์ร้านเข้าบ้าน\nทุกอย่างเกินขึ้นได้ตลอดเวลา\nจะดีกว่าไหม\nเมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าน\nสามารโทรแจ้งได้ทันท่วงที\nไม่ต้องรอ ',
            children: [
              TextSpan(
                text: "โทรเลย!!!",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        body: 'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิ',
        image: Image.asset(
          'assets/images/pic2.jpg',
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(fontWeight: FontWeight.normal),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
    ];
  }
}
