import 'package:flutter/material.dart';

class PendingRow extends StatelessWidget {

  final String payment;
  final String qty;
  final String orderStatus;

  const PendingRow({super.key, required this.payment, required this.qty, required this.orderStatus});


  @override
  Widget build(BuildContext context) {
    return   Row(

      children: [
        Column(
          children: [
            Text('Payement',style: Theme.of(context).textTheme.caption,),
            Text('\$${payment}',style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.bold),),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text('QTY',style: Theme.of(context).textTheme.caption,),
            Text(qty,style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.bold),),
          ],
        ),
        Spacer(),

        Column(
          children: [
            Text('Order Status',style: Theme.of(context).textTheme.caption,),
            Text(orderStatus,style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.bold),),
          ],
        ),
      ],
    );
  }
}
