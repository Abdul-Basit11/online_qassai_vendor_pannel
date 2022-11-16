import 'package:flutter/material.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';
import 'package:online_qassai_app/presentation/elements/appbar_title.dart';

import '../../../../elements/size_boxes.dart';
import 'widget/banner.dart';
import 'widget/edit_shop_button.dart';

import 'widget/product_grid_container.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppBarTitle(
          title: 'Shop',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EditShopButton(
              editShop: () {
                Navigator.pushNamed(context, RoutesName.addshopView);
              },
            ),
            Expanded(
              child: ListView(
                children: [
                  /// banner + L O G O
                  BannerLogo(),
                  k20,
                  Text(
                    'ALL Poduct',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  k20,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.2 / 1.6, crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GridProductContainer();
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
