import 'package:flutter/material.dart';
import 'package:online_qassai_app/presentation/elements/custom_button.dart';
import 'package:online_qassai_app/presentation/elements/size_boxes.dart';

import '../../../../elements/custom_text_field.dart';

class ForgotViewBody extends StatelessWidget {
  const ForgotViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(
                  'assets/images/forgot_logo.png',
                  scale: 8,
                ),
                k20,
                Text(
                  'Enter Your register email below to recieve password we set instruction',textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                k20,
                CustomTextField(
                  hintText: 'Name',
                ),
                k40,
                CustomButton(buttonText: 'Get Code', onTapped: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
