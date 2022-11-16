import 'package:flutter/material.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';
import 'package:online_qassai_app/presentation/elements/custom_app_logo.dart';

import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../elements/size_boxes.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

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
                  k50,
                  CustomAppLogo(),
                  k10,
                  Text(
                    'Online Qassai',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  k30,

                  /// email
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  k5,
                  CustomTextField(
                    hintText: 'Email',
                  ),

                  /// password
                  k20,
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.caption,
                  ),
              k5,
                  CustomTextField(
                    hintText: 'Password',
                    isPasswordField: true,
                    obsecureText: true,
                  ),

                  /// forgot text
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.forgotView);
                        },
                        child: Text(
                          'Forgot Password',
                          style: Theme.of(context).textTheme.caption,
                        )),
                  ),
                  k25,
                  CustomButton(
                    onTapped: () {
                      Navigator.pushNamed(
                          context, RoutesName.bottomnavigationview);
                    },
                    buttonText: 'Login',
                  ),
                  k20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RoutesName.signUpView);
                          },
                          child: Text(
                            '?Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Color(0xff22181c),
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
