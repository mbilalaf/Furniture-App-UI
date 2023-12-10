import 'package:flutter/material.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';
import 'package:furniture_app/widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/bg.png",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 65,
                    bottom: 24,
                  ),
                  child: Text(
                    "We Design Furniture For Your Comfort",
                    style: MyTextStyle.extraLargeText,
                  ),
                ),
                const Image(
                  image: AssetImage(
                    "assets/images/dots.png",
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 24,
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        const BottomNavBar(),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: MyTextStyle.mediumText,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
