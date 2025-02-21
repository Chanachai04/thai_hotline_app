import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SubDIntroductionCallUi {
  static List<PageViewModel> getPages(BuildContext context) {
    return [
      PageViewModel(
        //? Text เมื่อต้องเดินทาง.....
        titleWidget: Text.rich(
          TextSpan(
            text:
                'น้ำไม่ไหล\nไฟฟ้าดับ\nโทรไม่ติด\nอินเตอร์เน็ตมีปัญหา\nเข้า Social Media ไม่ได้\nรอไม่ได้ ',
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
        body: 'สายด่วน\nสาธารณูปโภค',
        image: Image.asset(
          'assets/images/pic4.jpg',
          height: MediaQuery.of(context).size.height * 0.22,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(fontWeight: FontWeight.normal),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
    ];
  }
}
