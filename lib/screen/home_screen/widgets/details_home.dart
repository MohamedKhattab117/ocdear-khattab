import 'package:flutter/material.dart';

import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/screen/home_screen/widgets/slider_home.dart';
import 'package:ocdear/screen/home_screen/widgets/video_home.dart';
import 'package:ocdear/utils/text_style.dart';

class DetailsHome extends StatelessWidget {
  const DetailsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            WelcomeWidget(),
            SizedBox(
              height: 10,
            ),
            SliderHomePage(),
            SizedBox(
              height: 20,
            ),
            VideoHomePage()
          ],
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.normalActive,
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              height: 60,
              width: 60,
            ),
            const Positioned.fill(
              right: 0,
              top: 5,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage('assets/images/home/Ellipse 69.png'),
              ),
            )
          ],
        ),
        const Directionality(
          textDirection: TextDirection.rtl,
          child: Column(children: [
            Text(
              "اهلا مستخدم",
              style: AppTextStyle.textStyle20,
            ),
            Text(
              "اهلا بك في تطبيقك المفضل",
              style: AppTextStyle.textStyle16,
            )
          ]),
        ),
      ],
    );
  }
}
