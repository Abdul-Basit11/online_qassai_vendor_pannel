import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';


class NotificationButton extends StatelessWidget {

  final bool isOn;
  final Function(bool)? on;
  final VoidCallback isTapped;

  const NotificationButton({super.key, required this.isTapped,required this.isOn, this.on});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: isTapped,

        child: Row(
          children: [
            Text(
              'Push Notification',
              style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            CupertinoSwitch(
              activeColor: AppColors.kPrimaryColor,
                value: isOn,
                onChanged: (on),
            ),
          ],
        ),
      ),
    );
  }
}
