import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';
import 'package:online_qassai_app/presentation/elements/appbar_title.dart';

import '../../../../elements/custom_divider.dart';
import '../../../../elements/size_boxes.dart';
import 'widget/account_info_text.dart';
import 'widget/account_setting.dart';
import 'widget/edit_profile.dart';
import 'widget/notification_btn.dart';

class AccountViewBody extends StatefulWidget {
  const AccountViewBody({Key? key}) : super(key: key);

  @override
  State<AccountViewBody> createState() => _AccountViewBodyState();
}

class _AccountViewBodyState extends State<AccountViewBody> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: AppBarTitle(
          title: 'Account Setting',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// profile section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.kSecondaryColor),
                    ),
                    kw15,
                    EditProfile(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesName.editProfileView);
                      },
                      userName: 'User Name',
                    ),
                  ],
                ),
              ),

              /// account info text
              AccountInfoText(),
              k40,

              /// settings
              NotificationButton(
                isTapped: () {
                  Navigator.pushNamed(context, RoutesName.notificationView);
                },
                isOn: isOn,
                on: (va) {
                  setState(() {
                    isOn = va;
                  });
                },
              ),
              CustomDivider(),
              AccountSetting(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.shopView);
                },
                setting: 'Shop',
              ),
              CustomDivider(),

              AccountSetting(
                setting: 'Term & Conditions',
                onTap: (){},
              ),
              CustomDivider(),

              AccountSetting(
                setting: 'Privacy  &  Policy ',
                onTap: (){},
              ),
              CustomDivider(),

              AccountSetting(
                setting: 'Contact us',
                onTap: (){},
              ),
              CustomDivider(),

              AccountSetting(
                setting: 'Log Out ',
                onTap: (){},
              ),
              CustomDivider(),

              k40,
            ],
          ),
        ),
      ),
    );
  }
}
