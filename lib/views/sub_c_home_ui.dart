import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUI extends StatefulWidget {
  const SubCHomeUI({super.key});

  @override
  State<SubCHomeUI> createState() => _SubCHomeUIState();
}

class _SubCHomeUIState extends State<SubCHomeUI> {
  List<String> imageShow = [
    'assets/images/bank01.png',
    'assets/images/bank02.png',
    'assets/images/bank03.png',
    'assets/images/bank04.png',
    'assets/images/bank05.png',
    'assets/images/bank06.png',
    'assets/images/bank07.png',
    'assets/images/bank08.png',
    'assets/images/bank09.png',
    'assets/images/bank10.png',
    'assets/images/bank11.png',
    'assets/images/bank12.png',
    'assets/images/bank13.png',
    'assets/images/bank14.png',
    'assets/images/bank15.png',
    'assets/images/bank16.png',
  ];
  List<String> textShow = [
    'ธนาคารกรุงเทพ',
    'ธนาคารออมสิน',
    'ธนาคารกสิกรไทย',
    'ธนาคารกรุงไทย',
    'ธนาคารกรุงศรี',
    'ธนาคารทีเอ็ทบีธนชาต',
    'ธนาคารciti',
    'ธนาคารLH',
    'ธนาคารธอส',
    'ธนาคารไทยพาณิชย์',
    'ธนาคารkiatnakinphatra',
    'ธนาคารไทยเครดิต',
    'ธนาคารuob',
    'ธนาคารtisco',
    'ธนาคารอิสลาม',
    'ธนาคารอซีไอเอ็มบี ไทย',
  ];
  List<String> phoneShow = [
    '1333',
    '1115',
    '02 888 8888',
    '02 111 1111',
    '1572',
    '1428',
    '1588',
    '1327',
    '02 777 7777',
    '02 165 5555',
    '02 697 5454',
    '02 285 1555',
    '02 285 1555',
    '02 633 6000',
    '02 204 2766',
    '02 626 7777',
  ];
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Text(
              "สายด่วน\nธนาคาร",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Image.asset(
              'assets/images/pic3.jpg',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: imageShow.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => _makePhoneCall(phoneShow[index]),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.085,
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
                            Image.asset(imageShow[index]),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textShow[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(phoneShow[index]),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.call),
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
