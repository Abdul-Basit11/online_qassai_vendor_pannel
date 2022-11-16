import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_qassai_app/navigation/routes_name.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../configuration/app_colors.dart';
import '../../../../elements/custom_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController _controller = PageController();

  bool isLastPage = false;
  List lottieImages = [
    'assets/images/meat.json',
    'assets/images/meat_phone_lottie.json',
    'assets/images/shop.json',
  ];

  @override
  Widget build(BuildContext  context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _controller,
                    itemCount: lottieImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Lottie.asset(lottieImages[index], animate: true);
                    }),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmoothPageIndicator(

                        effect: WormEffect(
                            offset: 17,
                           type: WormType.thin,
                            strokeWidth: 1,
                            paintStyle: PaintingStyle.fill,
                            spacing: 30,
                            dotWidth: 10,
                            dotHeight: 10,
                            activeDotColor:   AppColors.kPrimaryColor,
                            dotColor:AppColors.kSecondaryColor,
                        ),
                        controller: _controller,
                        count: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: CustomButton(
                        onTapped: (){
                          _controller.page == 2
                              ? Navigator.pushNamed(
                              context, RoutesName.loginView)
                              : _controller.nextPage(
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeInOutQuad);
                        },
                        buttonText: 'Next',
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
