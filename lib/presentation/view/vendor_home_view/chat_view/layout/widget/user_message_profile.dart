import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';

class UserMessageProfile extends StatelessWidget {

  final VoidCallback onTapped;

  const UserMessageProfile({super.key, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
    margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: AppColors.kSecondaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: onTapped,
        leading:        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color:AppColors.kAccentColor),
        ),
        title: Text(
          'Title',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'message',
          style: Theme.of(context).textTheme.overline,
        ),
        trailing: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          child: Center(
            child: Text(
              '1',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
      ),
    );
  }
}
