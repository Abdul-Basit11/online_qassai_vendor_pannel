import 'package:flutter/material.dart';
import 'package:online_qassai_app/presentation/elements/appbar_title.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/order_view/layout/widget/my_tabs.dart';

import '../../../../../configuration/app_colors.dart';
import 'widget/inprogress_tab.dart';

class OrderViewBody extends StatelessWidget {
  final List<Widget> tabs = [
    MyTabs(tabTitle: 'InProgress'),
    MyTabs(tabTitle: 'Pending'),
    MyTabs(tabTitle: 'Completed'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: AppBarTitle(title: 'Order',),
          ),
          body: Column(
            children: [
              Container(
               decoration: BoxDecoration(
                 color: AppColors.kSecondaryColor,
                    borderRadius: BorderRadius.circular(12)
               ),
                margin: EdgeInsets.symmetric(horizontal:15, vertical: 15),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: TabBar(
                 indicatorColor: Colors.black,
                    splashBorderRadius: BorderRadius.circular(12),
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(

                       color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    tabs: tabs,
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                    children: [
                      InProgessTabbar(),
                      InProgessTabbar(),
                      InProgessTabbar(),
                    ],
                ),
              ),

            ],
          )),
    );
  }
}
