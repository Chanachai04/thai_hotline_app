import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SubCIntroductionCallUi {
  static List<PageViewModel> getPages(BuildContext context) {
    return [
      //? Page view สายด่วน ธนาคาร
      PageViewModel(
        //? Text เมื่อเงินคือ.....
        titleWidget: Text.rich(
          TextSpan(
            text:
                'เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\nกิน เที่ยว ซื้อสินค้า\nการเดินทาง การรักษาพยาบาล\nหรือโดนเหตุมิจฉาชีพ\nแก๊งคอลเซ็นเตอร์หลอกลวง\nสามารถติดต่อธนาคารโดยตรง\nได้เลย ',
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
        body: 'สายด่วน\nธนาคาร',
        image: Image.asset(
          'assets/images/pic3.jpg',
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(fontWeight: FontWeight.normal),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      //? Page view สายด่วน สาธารณูปโภค
    ];
  }
}
