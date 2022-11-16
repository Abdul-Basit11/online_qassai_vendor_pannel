


import 'package:flutter/material.dart';



class AccountSetting extends StatelessWidget {
final String setting;
final VoidCallback? onTap;

   AccountSetting({super.key, required this.setting,this.onTap});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
      child: ListTile(
        onTap: onTap,
        dense: true,
        title: Text(setting,style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.bold),),
      ),
    );
    //   Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
    //   child: GestureDetector(
    //     onTap: onTap,
    //     child: Row(
    //       children: [
    //         Text(setting,style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.bold),),
    //
    //       ],
    //     ),
    //   ),
    // );
  }
}
