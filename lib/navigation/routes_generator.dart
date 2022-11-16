import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/add_product_view/add_product_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/add_shop_view/add_shop_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/bottom_navigation_bar_view/bottom_navigation_bar_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/edit_profile_view/edit_profile.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/notification_view/notification_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_home_view/user_message_detail/user_message_detail_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_view/forgot_view/forgot_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_view/login_view/login_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_view/on_boarding_view/on_boarding_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_view/sign_up_view/sign_up_view.dart';
import 'package:online_qassai_app/presentation/view/vendor_view/verification_view/verification_view.dart';

import '../presentation/view/vendor_home_view/shop_view/shop_view.dart';
import '../presentation/view/vendor_view/splash_view/layout/body.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      /// splash View
      case RoutesName.splashView:
        return scaleTransition(SplashViewBody());

      /// onbaording view
      case RoutesName.onBoardingView:
        return scaleTransition((OnBoardingView()));

      /// login View
      case RoutesName.loginView:
        return scaleTransition(LoginView());

      /// sign up view
      case RoutesName.signUpView:
        return scaleTransition(SignUpView());

      /// verification view
      case RoutesName.verificationView:
        return scaleTransition(VerificationView());

      /// forgot view
      case RoutesName.forgotView:
        return scaleTransition(ForgotView());

      /// navigation bar view

      case RoutesName.bottomnavigationview:
        return scaleTransition(BottomNavigationBarView());

      /// add product view
      case RoutesName.addProductView:
        return scaleTransition(AddProductView());

      /// user message detail view
      case RoutesName.usermessagedtailView:
        return scaleTransition(UserMessageDetailView());

      /// notification view

      case RoutesName.notificationView:
        return scaleTransition(NotificationView());
        /// edit profile view

      case RoutesName.editProfileView:
        return scaleTransition(EditProfileView());

        ///  shop view
      case RoutesName.shopView:
        return scaleTransition(ShopView());

         /// add shop view
      case RoutesName.addshopView:
        return scaleTransition(AddShopView());

    /// default
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                      child: Text(
                    'Invalid Route 👀',
                    style: TextStyle(color: Color(0xff191919)),
                  )),
                ));
    }
  }

  static PageRouteBuilder scaleTransition(Widget screen) {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secanimation, Widget screen) {
        return ScaleTransition(
          scale: animation,
          child: screen,
          alignment: Alignment.bottomCenter,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secanimation) {
        return screen;
      },
    );
  }
}
