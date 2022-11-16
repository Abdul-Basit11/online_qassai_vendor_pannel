import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';

import '../../../../../navigation/routes_name.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../elements/size_boxes.dart';
import '../../sign_up_view/layout/widget/field_title.dart';
import 'widget/cnic_cards.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  k40,

                  /// logo
                  Center(
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.kTextColor)),
                      child: Center(child: Text('L o g o')),
                    ),
                  ),
                  k30,

                  /// containers ( CNIC )
                  Row(
                    children: [
                      CnicCards(
                        cnicText:'Cnic Front Image',
                        onTapped: (){},
                      ),
                      kw30,
                      CnicCards(
                        cnicText:'Cnic Back Image',
                        onTapped: (){},
                      ),
                    ],
                  ),
                  k45,

                  /// full name
                  FieldTitle(fieldText: 'Full Name'),
                  k5,
                  CustomTextField(
                    hintText: 'Full Name',
                  ),
                  k20,

                  /// cnic number

                  FieldTitle(fieldText: 'CNIC Number'),
                  k5,
                  CustomTextField(
                    hintText: 'Cnic-Number',
                    textInputType: TextInputType.number,
                  ),

                  k20,

                  /// CNIC Issue Date

                  FieldTitle(fieldText: 'CNIC Issue Date'),
                  k5,
                  CustomTextField(
                    hintText: 'CNIC Issue Date',
                    textInputType: TextInputType.number,
                  ),

                  k20,

                  /// Expiray Date

                  FieldTitle(fieldText: 'Expiray Date'),
                  k5,
                  CustomTextField(
                    hintText: 'Expiray Dat',
                    textInputType: TextInputType.number,
                  ),
                  k50,
                  CustomButton(
                    onTapped: () {
                      Navigator.pushNamed(
                          context, RoutesName.bottomnavigationview);
                    },
                    buttonText: 'Next',
                  ),
                  k20,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
