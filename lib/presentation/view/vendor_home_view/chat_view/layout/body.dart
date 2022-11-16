import 'package:flutter/material.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';

import '../../../../elements/appbar_title.dart';
import '../../../../elements/custom_back_button.dart';
import 'widget/user_message_profile.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CustomBackButton(),
          centerTitle: true,
          title: AppBarTitle(title: 'Chat',),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              UserMessageProfile(
                onTapped: (){
            Navigator.pushNamed(context, RoutesName.usermessagedtailView);
                },
              ),UserMessageProfile(
                onTapped: (){
            Navigator.pushNamed(context, RoutesName.usermessagedtailView);
                },
              ),UserMessageProfile(
                onTapped: (){
            Navigator.pushNamed(context, RoutesName.usermessagedtailView);
                },
              ),

            ],
          ),
        ));
  }
}
