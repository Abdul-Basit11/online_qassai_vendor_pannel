

import 'package:flutter/material.dart';

import '../../../../../elements/size_boxes.dart';


class EditProfile extends StatelessWidget {

  final String userName;
  final VoidCallback onTap;

  const EditProfile({super.key, required this.userName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        k5,
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Edit Profile',
            style: Theme.of(context)
                .textTheme
                .overline!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
