import 'package:flutter/material.dart';
import 'package:online_qassai_app/presentation/elements/custom_text_field.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../elements/custom_back_button.dart';
import '../../../../elements/size_boxes.dart';
import 'dart:math' as math;

import 'widget/sender_reciever_message.dart';

class UserMessageDetailViewBody extends StatelessWidget {
  const UserMessageDetailViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.kSecondaryColor),
            ),
            kw10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User Name',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 14),
                ),
                Text(
                  'online',
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(color: Color(0xffeee7d6)),
                ),
              ],
            ),
            Spacer(
              flex: 4,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Color(0xffeee7d6),
                )),
          ],
        ),
        leading: CustomBackButton(),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    SenderRecieverMessage(
                      isSentByMe: true,
                     message: 'Hello',
                    ),SenderRecieverMessage(
                      isSentByMe: false,
                     message: 'Hello',
                    ),
                    SenderRecieverMessage(
                      isSentByMe: true,
                      message: 'hello',
                    ),SenderRecieverMessage(
                      isSentByMe: false,
                      message: 'there',
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(child: CustomTextField(hintText: 'Type Message')),
                kw10,
                Transform.rotate(angle: -math.pi / 4, child: Icon(Icons.send))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
