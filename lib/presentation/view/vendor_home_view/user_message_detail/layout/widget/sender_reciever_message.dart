import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/presentation/elements/size_boxes.dart';

class SenderRecieverMessage extends StatelessWidget {
  final bool isSentByMe;
  final String message;

  const SenderRecieverMessage(
      {super.key,
      required this.isSentByMe,
     required this.message,
      });

  @override
  Widget build(BuildContext context) {
    return isSentByMe
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:
                      double.infinity,
                      margin: EdgeInsets.only(top: 15, left: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color:AppColors.kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: Text(
                          message),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('9:00 PM',style: Theme.of(context).textTheme.overline!.copyWith(color: Colors.grey.shade400),),
                    )
                  ],
                ),
              ),
              kw10,
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [


              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 15, left: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color:AppColors.kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Text(message),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('9:00 PM',style: Theme.of(context).textTheme.overline!.copyWith(color: Colors.grey.shade400),),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          );
  }
}
