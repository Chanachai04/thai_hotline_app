import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/introduction_call_ui.dart';

void main() {
  runApp(ThaiHotline());
}

class ThaiHotline extends StatefulWidget {
  const ThaiHotline({super.key});

  @override
  State<ThaiHotline> createState() => _ThaiHotlineState();
}

class _ThaiHotlineState extends State<ThaiHotline> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionCallUI(),
    );
  }
}
