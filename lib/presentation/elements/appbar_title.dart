
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
final String title;

  const AppBarTitle({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return  Text(title,style: Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xffeee7d6)),);
  }
}
