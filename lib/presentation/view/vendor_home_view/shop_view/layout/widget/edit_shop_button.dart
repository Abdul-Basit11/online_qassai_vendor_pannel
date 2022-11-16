
import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';


class EditShopButton extends StatelessWidget {

  final VoidCallback editShop;

  const EditShopButton({super.key, required this.editShop});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: editShop,
          child: Text(
            'Edit Shop',
            style: Theme.of(context)
                .textTheme
                .overline!
                .copyWith(
                color: AppColors.kTextColor,

                fontWeight: FontWeight.w600),
          )),
    );
  }
}
