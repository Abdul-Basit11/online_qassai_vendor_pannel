

import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';


class CnicCards extends StatelessWidget {

  final String cnicText;
  final VoidCallback onTapped;

  const CnicCards({super.key, required this.cnicText, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:onTapped,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Color(0xffe9dccf),
              border: Border.all(color: AppColors.kAccentColor),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              cnicText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }
}
