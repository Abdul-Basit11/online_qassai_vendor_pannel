import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';

import '../../../../elements/size_boxes.dart';

class HomeViewBody extends StatelessWidget {
  final List gridTitle = [
    ['Total Orders', '6'],
    ['Pending Orders', '12'],
    ['Complete Orders', '20'],
    ['Total Income', '\$120'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.kSecondaryColor),
            ),
            kw10,
            Text(
              'Vendor Name',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: AppColors.kSecondaryColor),
            ),
            Spacer(
              flex: 5,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.kSecondaryColor,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
                child: GridView.builder(
                    itemCount: gridTitle.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 2 / 2,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: AppColors.kSecondaryColor,
                            border: Border.all(color: AppColors.kAccentColor),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridTitle[index][1],
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Spacer(),
                            Text(
                              gridTitle[index][0],
                              style: Theme.of(context).textTheme.overline,
                            ),
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
