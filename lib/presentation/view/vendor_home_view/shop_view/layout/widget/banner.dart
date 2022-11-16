
import 'package:flutter/material.dart';

import '../../../../../../configuration/app_colors.dart';


class BannerLogo extends StatelessWidget {
  const BannerLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 180,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text('Banner'),
            ),
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.kSecondaryColor),
              child: Center(
                child: Text(
                  'L O G O',
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
