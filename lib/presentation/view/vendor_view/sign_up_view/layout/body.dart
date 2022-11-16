import 'package:flutter/material.dart';
import 'package:online_qassai_app/presentation/view/vendor_view/sign_up_view/layout/widget/field_title.dart';

import '../../../../../navigation/routes_name.dart';
import '../../../../elements/custom_app_logo.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../elements/size_boxes.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               k20,
                  CustomAppLogo(),
                  k10,
                  Text(
                    'Online Qassai',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  k35,

                  /// name
                  FieldTitle(fieldText: 'Name'),
                  k5,
                  CustomTextField(
                    hintText: 'Name',
                  ),

                  k20,

                  /// email
                  FieldTitle(fieldText: 'Email'),
k5,
                  CustomTextField(
                    hintText: 'Email',
                  ),

                  k20,

                  /// phone number
                  FieldTitle(fieldText: 'Phone Number'),
              k5,
                  CustomTextField(
                    hintText: 'P-N',
                    textInputType: TextInputType.number,
                  ),
                  k20,

                  ///password
                  FieldTitle(fieldText: 'Password'),
                  k5,
                  CustomTextField(
                    hintText: 'Password',
                    isPasswordField: true,
                    obsecureText: true,
                  ),
                  k20,

                  ///Confirm password
                  FieldTitle(fieldText: 'Confirm Password'),
k5,
                  CustomTextField(

                    hintText: 'Confirm Password',
                    isPasswordField: true,
                    obsecureText: true,
                  ),

                  k50,
                  CustomButton(
                    onTapped: () {
                    Navigator.pushNamed(context, RoutesName.verificationView);

                    },
                    buttonText: 'Register',
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
