


import 'package:flutter/material.dart';


class AccountInfoText extends StatelessWidget {
  const AccountInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        'Account Info',
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
