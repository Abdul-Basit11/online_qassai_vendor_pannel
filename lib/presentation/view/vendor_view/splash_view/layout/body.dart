

import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../navigation/routes_name.dart';

class SplashViewBody extends StatefulWidget {

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.onBoardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Container(
         height: 200,
         width: 200,
         decoration: BoxDecoration(
           shape: BoxShape.circle,

         ),
         child: Image(image: AssetImage('assets/images/online_qasai.gif'),)
       ),
     ),
    );
  }
}
