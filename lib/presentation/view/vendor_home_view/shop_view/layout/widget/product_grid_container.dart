

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';

import '../../../../../elements/size_boxes.dart';

class GridProductContainer extends StatelessWidget {
  const GridProductContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color:AppColors.kSecondaryColor,
              ),
            ),
          ),
          k10,
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Name',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Category Name',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  k5,
                  Text(
                    '\$ 300',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                          itemSize: 14,
                          ignoreGestures: true,
                          itemBuilder: (context, index) {
                            return Icon(
                              Icons.star,
                              color: Colors.black,
                            );
                          },
                          onRatingUpdate: (v) {}),
                      Spacer(),
                      Text(
                        "(4.0)",
                        style:
                        Theme.of(context).textTheme.overline,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
