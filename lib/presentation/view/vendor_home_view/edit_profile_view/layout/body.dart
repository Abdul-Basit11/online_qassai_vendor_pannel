import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/presentation/elements/appbar_title.dart';
import 'package:online_qassai_app/presentation/elements/custom_back_button.dart';
import 'package:online_qassai_app/presentation/elements/custom_button.dart';
import 'package:online_qassai_app/presentation/elements/custom_text_field.dart';

import '../../../../elements/size_boxes.dart';


class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        centerTitle: true,
        title: AppBarTitle(title: 'Edit Profile',),
automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(

            children: [
              /// edit profile
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: AppColors.kSecondaryColor,
                          shape: BoxShape.circle
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,

                            shape: BoxShape.circle
                        ),
                        child: Center(child: Icon(Icons.add,size: 18,)),
                      ),
                    ),
                  ],
                ),
              ),
              k40,
              CustomTextField(hintText: 'Name'),
              k10,
              CustomTextField(hintText: 'Email Address'),
              k10,
              CustomTextField(hintText: 'Phone Number',textInputType: TextInputType.phone),
              k10,
              CustomTextField(hintText: 'Cnic Number',textInputType: TextInputType.phone),
            k50,
              CustomButton(buttonText: 'Update', onTapped: (){}),

            ],
          ),
        ),
      ),
    );
  }
}
