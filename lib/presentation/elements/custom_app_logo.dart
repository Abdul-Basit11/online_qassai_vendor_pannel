

import 'package:flutter/material.dart';

class CustomAppLogo extends StatelessWidget {
  const CustomAppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 115,
      width: 115,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset('assets/images/app_logo.png',fit: BoxFit.contain,),

    );
  }
}
