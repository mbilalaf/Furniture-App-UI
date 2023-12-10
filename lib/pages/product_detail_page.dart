import 'package:flutter/material.dart';
import 'package:furniture_app/pages/cart_page.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';
import 'package:furniture_app/widgets/product_detail_card.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
                              "Leather",
                              style: MyTextStyle.largeText.copyWith(
                                color: MyColors.darkBlue,
                                fontWeight: FontWeight.w400,
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              "Swivel Chair",
                              style: MyTextStyle.largeText.copyWith(
                                color: MyColors.darkBlue,
                                fontSize: 32,
                              ),
                            ),
                            const SizedBox(height: 14),
                            Text(
                              "Dinning Chair",
                              style: MyTextStyle.captionText.copyWith(
                                color: MyColors.darkBlue.withOpacity(0.6),
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
                            border: Border.all(
                              color: MyColors.darkGray.withOpacity(0.3),
                            ),
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
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ProductDetailCard(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: MyColors.lightGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(58),
                  topRight: Radius.circular(58),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 24,
                  right: 16,
                  left: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 260,
                          decoration: BoxDecoration(
                            color: MyColors.lightGray,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Material",
                                      style: MyTextStyle.mediumText.copyWith(
                                        color: MyColors.darkBlue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Leather sheet",
                                      style: MyTextStyle.captionText.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            MyColors.darkBlue.withOpacity(0.4),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 24),
                                const Image(
                                  image: AssetImage(
                                    "assets/images/material.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: MyColors.orange,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "Choose",
                          style: MyTextStyle.largeText.copyWith(
                            color: MyColors.darkBlue,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "Color",
                          style: MyTextStyle.largeText.copyWith(
                            color: MyColors.darkBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 75,
                          decoration: BoxDecoration(
                            color: MyColors.teal,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 75,
                          decoration: BoxDecoration(
                            color: MyColors.pink,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 75,
                          decoration: BoxDecoration(
                            color: MyColors.yellow,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 75,
                          decoration: BoxDecoration(
                            color: MyColors.darkGray,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          const CartPage(),
                        );
                      },
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Add to cart",
                            style: MyTextStyle.mediumText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
