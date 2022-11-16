import 'package:flutter/material.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../elements/appbar_title.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../elements/size_boxes.dart';

class AddShopViewBody extends StatelessWidget {
  const AddShopViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppBarTitle(
          title: 'Add Shop',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              k10,
              Container(
                height: 180,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      decoration: BoxDecoration(

                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Spacer(flex: 3,),
                          Text('Add Banner'),
                          Spacer(),
                          Row(
                            children: [
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 22,)),

                            ],
                          )
                        ],
                      ),
                      width: double.infinity,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child:   Container(
                        margin: EdgeInsets.only(top: 20),
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
                                  shape: BoxShape.circle
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
                    ),
                  ],
                ),
              ),



              k30,
              CustomTextField(
                hintText: 'ShopName',
              ),
              k20,
              CustomTextField(
                hintText: 'Shop Address',
              ),
              k20,



              CustomTextField(
                hintText: 'Shop Description',
                maxline: 7,
              ),
              k50,
              CustomButton(buttonText: 'Create  Shop ', onTapped: (){}),
              k10,
            ],
          ),
        ),
      ),
    );
  }
}
