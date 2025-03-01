import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SubAHomeUI extends StatefulWidget {
  const SubAHomeUI({super.key});

  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}

class _SubAHomeUIState extends State<SubAHomeUI> {
  //? เก็บที่อยู่รุปภาพในรูปแบบ List
  List<String> imageShow = [
    'assets/images/travelling01.png',
    'assets/images/travelling02.png',
    'assets/images/travelling03.png',
    'assets/images/travelling04.png',
    'assets/images/travelling05.png',
    'assets/images/travelling06.png',
    'assets/images/travelling07.png',
    'assets/images/travelling08.png',
    'assets/images/travelling09.png',
  ];
  //? เก็บข้อความในรูปแบบ List
  List<String> messageShow = [
    'ข้อมูลจราจร',
    'ตำรวจท่องเที่ยว',
    'ตำรวจทางหลวง',
    'ข้อมูลจราจร',
    'ขสมก.',
    'บขส.',
    'เส้นทางบนทางด่วน',
    'กรมทางหลวง',
    'การรถไฟแห่งประเทศไทย',
  ];
  //? เก็บเบอร์โทรในรูปแบบ List
  List<String> phoneShow = [
    '1146',
    '1155',
    '1193',
    '1197',
    '1348',
    '1490',
    '1543',
    '1586',
    '1690',
  ];
  //? func ที่เอาไว้โทรหาเบอร์ โดยรับ parameter เป็น phoneNumber
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  //? fonc ที่เอาไว้แสดง dialog โดยรับ parameter เป็น context และ index
  //? BuildContext เป็นอ็อบเจ็กต์ที่อ้างถึงตำแหน่งของวิดเจ็ตในโครงสร้างของ UI
  Future<void> _showDialog(BuildContext context, int index) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: "ยืนยันการดำเนินการ",
      message: "คุณแน่ใจหรือไม่ว่าต้องการดำเนินการนี้?",
      okLabel: "ตกลง",
      cancelLabel: "ยกเลิก",
    );
    //? เช็คว่าผู้ใช้กดปุ่ม "ตกลง" หรือไม่ ถ้าใช่ให้โทรหาเบอร์
    if (result == OkCancelResult.ok) {
      //? เรียกใช้ func _makePhoneCall โดยส่ง argument เป็น phoneShow[index]
      _makePhoneCall(phoneShow[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Text(
              "สายด่วน\nการเดินทาง",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: ListView.builder(
                //? เปลี่ยนการเลื่อนจอเป็นแนวตั้ง
                scrollDirection: Axis.vertical,
                //? แสดงรายการตามจำนวนใน imageShow
                itemCount: imageShow.length,
                //? กำหนดเนื้อหาจะแสดงอย่างไร
                itemBuilder: (context, index) {
                  return InkWell(
                    //? เมื่อคลิกให้เรียกใช้ func _showDialog โดยส่ง argument เป็น context และ index
                    onTap: () {
                      _showDialog(context, index);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  //? แสดงรุปแต่ละรูปใน imageShow โดยอ้างถึงตำแหน่ง index
                                  image: AssetImage(imageShow[index]),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  //? แสดงข้อความแต่ละข้อความใน messageShow โดยอ้างถึงตำแหน่ง index
                                  messageShow[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  //? แสดงเบอร์โทรแต่ละเบอร์โทรใน phoneShow โดยอ้างถึงตำแหน่ง index
                                  phoneShow[index],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            //? ใช้เติมช่องว่างระหว่างวิดเจ็ตอื่นๆ ใน Row หรือ Column โดยอัตโนมัติ
                            Spacer(),
                            Icon(FontAwesomeIcons.phone, color: Colors.green),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
