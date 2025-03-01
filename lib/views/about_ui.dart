import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('สายด่วน THAILAND', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "ผู้จัดทำ",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/icon/sau.jpg', width: 200),
            Text(
              "มหาวิทยาลัยเอเชียอาคเนย์",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width,
              ),
              child: Image.asset('assets/icon/me.jpg', width: 200),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "6652410007\nนายชนะชัย เบญมาตย์\ns665210007@sau.ac.th\nDTI\nเทคโนโลยีดิจิตอลและนวัตกรรม",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
