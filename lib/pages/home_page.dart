import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/pages/cart_page.dart';
import 'package:furniture_app/pages/product_detail_page.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';
import 'package:furniture_app/widgets/item_card.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 380,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(58),
                          bottomRight: Radius.circular(58),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/main-img.png',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        bottom: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                      "Find the best",
                                      style: MyTextStyle.largeText.copyWith(
                                        color: MyColors.darkBlue,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 32,
                                      ),
                                    ),
                                    Text(
                                      "Furniture!🛋️",
                                      style: MyTextStyle.largeText.copyWith(
                                        color: MyColors.darkBlue,
                                        fontSize: 32,
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    Text(
                                      "Dinning Chair",
                                      style: MyTextStyle.captionText.copyWith(
                                        color:
                                            MyColors.darkBlue.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(
                                    const CartPage(),
                                  );
                                },
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: MyColors.white,
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.local_grocery_store_outlined,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 72,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: MyColors.darkBlue,
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "\$230",
                                      style: MyTextStyle.largeText,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 72,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: MyColors.white,
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: MyColors.darkBlue,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 24),
                              child: FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: MyColors.white,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search Items",
                                  hintStyle: MyTextStyle.captionText.copyWith(
                                    color: MyColors.white.withOpacity(0.35),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 8,
                              ),
                              child: Container(
                                height: 70,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: MyColors.aquaGreen,
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                child: const Center(
                                  child: Image(
                                    image: AssetImage(
                                      "assets/icons/filter.png",
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ItemCard(
                            img: 'assets/images/img-1.png',
                            name: "Stool Table",
                            price: "\$105",
                            color: MyColors.aquaGreen,
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                const ProductDetailPage(),
                              );
                            },
                            child: const ItemCard(
                              img: 'assets/images/img-2.png',
                              name: "Leather Swivel Chair",
                              price: "\$229",
                              color: MyColors.lightGray,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          ItemCard(
                            img: 'assets/images/img-3.png',
                            name: "Stool Table",
                            price: "\$105",
                            color: MyColors.lightGray,
                          ),
                          SizedBox(width: 8),
                          ItemCard(
                            img: 'assets/images/img-4.png',
                            name: "Leather Swivel Chair",
                            price: "\$229",
                            color: MyColors.purpleBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
