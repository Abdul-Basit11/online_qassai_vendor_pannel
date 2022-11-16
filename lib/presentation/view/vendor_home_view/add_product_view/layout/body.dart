import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/presentation/elements/custom_button.dart';
import 'package:online_qassai_app/presentation/elements/size_boxes.dart';import '../../../../elements/appbar_title.dart';
import '../../../../elements/custom_back_button.dart';


import '../../../../elements/custom_text_field.dart';


class AddProductViewBody extends StatelessWidget {
  const AddProductViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:AppBarTitle(title: 'Add Product'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                /// profile image
                Container(
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
                            shape: BoxShape.circle,
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
                k30,
                CustomTextField(
                  hintText: 'Title',
                ),
                k20,
                CustomTextField(
                  hintText: 'Price',
                  textInputType: TextInputType.number,
                ),
                k20,

                CustomTextField(
                  hintText: 'Discount',
                ),
                k20,

                CustomTextField(
                  hintText: 'Description',
                  maxline: 7,
                ),
                   k40,
                CustomButton(buttonText: 'Create  Product ', onTapped: (){}),
                k10,
              ],

            ),
          ),
        ),
      ),
    );
  }
}
