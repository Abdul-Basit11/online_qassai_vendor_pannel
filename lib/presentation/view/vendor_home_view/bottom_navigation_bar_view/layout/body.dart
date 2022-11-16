
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_qassai_app/configuration/app_colors.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';

import '../../account_view/account_view.dart';
import '../../chat_view/chat_view.dart';
import '../../home_view/home_view.dart';
import '../../order_view/order_view.dart';


class BottomNavigationBarViewBody extends StatefulWidget {

  @override
  State<BottomNavigationBarViewBody> createState() => _BottomNavigationBarViewBodyState();
}

class _BottomNavigationBarViewBodyState extends State<BottomNavigationBarViewBody> {
  final List screens=[
    HomeView(),
    OrderView(),
    ChatView(),
    AccountView(),
  ];

   int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 floatingActionButton: FloatingActionButton(
   onPressed: (){
Navigator.pushNamed(context, RoutesName.addProductView);
   },
   child: Text('+',style: Theme.of(context).textTheme.caption,),
 ),
     body: screens.elementAt(_currentIndex),
   bottomNavigationBar: NavigationBar(
     elevation: 20,
       height: 70,
       selectedIndex: _currentIndex,
         onDestinationSelected: (value){
           setState(() {
             _currentIndex =value;
           });
         },
        animationDuration: Duration(milliseconds: 700),
       backgroundColor: AppColors.kPrimaryColor.withOpacity(0.4),

       destinations: [

     NavigationDestination(icon: Icon(Icons.home_outlined),label: 'Home',selectedIcon: Icon(Icons.home),),
     NavigationDestination(icon: Icon(Icons.shopping_bag_outlined),label: 'Order',selectedIcon: Icon(Icons.shopping_bag),),

     NavigationDestination(icon: Icon(CupertinoIcons.chat_bubble),label: 'Chat',selectedIcon: Icon(CupertinoIcons.chat_bubble_fill),),
     NavigationDestination(icon: Icon(Icons.person_outline),label: 'Account',selectedIcon: Icon(Icons.person),),
   ]),

    );

  }
}
