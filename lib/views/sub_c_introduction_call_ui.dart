import 'package:flutter/material.dart';

class SubCIntroductionCallUI extends StatefulWidget {
  const SubCIntroductionCallUI({super.key});

  @override
  State<SubCIntroductionCallUI> createState() => _SubCIntroductionCallUIState();
}

class _SubCIntroductionCallUIState extends State<SubCIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/pic3.jpg',
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text.rich(
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),

          Text(
            'สายด่วน\nธนาคาร',
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
