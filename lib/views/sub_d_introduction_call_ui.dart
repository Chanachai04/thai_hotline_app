import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SubDIntroductionCallUI extends StatefulWidget {
  const SubDIntroductionCallUI({super.key});

  @override
  State<SubDIntroductionCallUI> createState() => _SubDIntroductionCallUIState();
}

class _SubDIntroductionCallUIState extends State<SubDIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/pic4.jpg',
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),

          Text.rich(
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            'สายด่วน\nสาธารณูปโภค',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
