import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            //? Text เมื่อต้องเดินทาง.....
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
              bodyTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          PageViewModel(
            //? Text เมื่อต้องเดินทาง.....
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
              bodyTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),

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
              bodyTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
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
              bodyTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          //? Page view สายด่วน สาธารณูปโภค
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
              bodyTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
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
            MaterialPageRoute(builder: (context) => SubAHomeUI()),
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}
