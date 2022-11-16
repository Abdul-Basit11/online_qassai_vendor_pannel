

import 'package:flutter/material.dart';

class FieldTitle extends StatelessWidget {

  final String fieldText;

  const FieldTitle({super.key, required this.fieldText});


  @override
  Widget build(BuildContext context) {
    return Text(
      fieldText,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
