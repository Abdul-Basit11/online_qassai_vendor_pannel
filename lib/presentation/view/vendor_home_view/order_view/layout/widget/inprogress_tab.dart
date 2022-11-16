import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/presentation/elements/size_boxes.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/order_view/layout/widget/pending_row.dart';

class InProgessTabbar extends StatelessWidget {
  const InProgessTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),

        itemBuilder: (context,index){
      return Container(
        width: double.infinity,

        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 12),

         decoration: BoxDecoration(

           color: AppColors.kSecondaryColor,
           borderRadius: BorderRadius.circular(12)
         ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// product image box
                 Container(
                   height: 55,width: 50,
                   decoration: BoxDecoration(
                       color: AppColors.kAccentColor,
                     borderRadius: BorderRadius.circular(12)
                   ),
                 ),
                kw10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product Name',style: Theme.of(context).textTheme.caption,),
                    Text('Customer Name',style: Theme.of(context).textTheme.overline,),
                    Text('Order Date',style: Theme.of(context).textTheme.overline,),

                  ],
                ),
               kw15,
               Container(
                 width: 0.5,
                 height: 30,
                 color: Colors.black,

               ),
                kw10,
                Text('address',style: Theme.of(context).textTheme.overline,),



              ],
            ),
            k20,
            PendingRow(
              orderStatus: 'pending',
              payment: '30.5',
              qty: '1',
            ),
          ],
        ),
      );

    });
  }
}
