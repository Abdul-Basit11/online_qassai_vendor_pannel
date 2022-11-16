
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabs extends StatelessWidget {

  final String tabTitle;

  const MyTabs({super.key, required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    return  Tab(
      child: Text(tabTitle,style: GoogleFonts.quantico(fontSize: 12),),);
  }
}
