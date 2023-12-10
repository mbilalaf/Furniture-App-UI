import 'package:flutter/material.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';
import 'package:furniture_app/widgets/cart_product_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightGrey,
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: MyColors.lightGray,
              borderRadius: BorderRadius.circular(38),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Cart",
                              style: MyTextStyle.largeText.copyWith(
                                color: MyColors.darkBlue,
                                fontSize: 32,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Find the best",
                              style: MyTextStyle.captionText.copyWith(
                                color: MyColors.darkBlue.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: const Center(
                            child: Image(
                              image: AssetImage(
                                "assets/icons/menu.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const MyTile(
                  img: "assets/images/img-2.png",
                  name: "Leather Chair",
                  price: "\$299",
                ),
                const SizedBox(height: 12),
                const MyTile(
                  img: "assets/images/img-1.png",
                  name: "School Table",
                  price: "\$109",
                ),
                const SizedBox(height: 12),
                const MyTile(
                  img: "assets/images/img-4.png",
                  name: "School Table",
                  price: "\$120",
                ),
                const SizedBox(height: 24),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Grand",
                              style: MyTextStyle.largeText.copyWith(
                                color: MyColors.darkBlue,
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "Total",
                              style: MyTextStyle.largeText.copyWith(
                                color: MyColors.darkBlue,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\$927",
                          style: MyTextStyle.largeText.copyWith(
                            color: MyColors.darkBlue,
                            fontSize: 34,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Make Payment",
                          style: MyTextStyle.mediumText.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            color: MyColors.aquaGreen,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: const Icon(
                            Icons.credit_card_rounded,
                            size: 32,
                            color: MyColors.darkBlue,
                          ),
                        ),
                      ],
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
