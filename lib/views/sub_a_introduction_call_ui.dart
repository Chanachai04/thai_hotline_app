import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SubAIntroductionCallUi {
  static List<PageViewModel> getPages(BuildContext context) {
    return [
      PageViewModel(
        titleWidget: Text.rich(
          TextSpan(
            text:
                'เมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด\nจะใกล้หรือไกลเพียงใด\nสอบถามข้อมูลการเดินทาง การจราจร\nทางด่วน ทางหลัก ทางรอง\nเส้นทางเลี่ยงการจราจรติดขัด\nข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT\nชักช้าอยู่ใย ',
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
        body: 'สายด่วน\nการเดินทาง',
        image: Image.asset(
          'assets/images/pic1.jpg',
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
