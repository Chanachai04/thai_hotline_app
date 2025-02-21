import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubAHomeUI extends StatefulWidget {
  const SubAHomeUI({super.key});

  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}

class _SubAHomeUIState extends State<SubAHomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('สายด่วน THAILAND'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.circleExclamation),
          ),
        ],
        centerTitle: true,
      ),
    );
  }
}
