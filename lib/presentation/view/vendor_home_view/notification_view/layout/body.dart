import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/presentation/elements/appbar_title.dart';
import 'package:online_qassai_app/presentation/elements/custom_back_button.dart';
import 'package:online_qassai_app/presentation/elements/size_boxes.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: CustomBackButton(),
        title: AppBarTitle(
          title: 'Notification',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12,top: 20),
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:AppColors.kSecondaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color:AppColors.kAccentColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      kw20,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Notification',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            'Description',
                            style: Theme.of(context).textTheme.overline,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
