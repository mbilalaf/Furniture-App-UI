import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Image(
          image: AssetImage(
            "assets/images/bg-2.png",
          ),
        ),
        const Image(
          height: 285,
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/img-2.png",
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: MyColors.purpleBlue,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: MyTextStyle.mediumText.copyWith(
                        color: MyColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: const Center(
                    child: Icon(
                      FontAwesomeIcons.minus,
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  height: 60,
                  width: 96,
                  decoration: BoxDecoration(
                    color: MyColors.darkBlue,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Text(
                      "\$299",
                      style: MyTextStyle.largeText.copyWith(
                        color: MyColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
