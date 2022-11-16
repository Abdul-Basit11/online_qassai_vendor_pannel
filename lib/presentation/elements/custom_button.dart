import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTapped;

  const CustomButton(
      {super.key, required this.buttonText, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 58,
        width: double.infinity,
        child: ElevatedButton(

            onPressed: onTapped,
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.subtitle2,
            )));
  }
}
