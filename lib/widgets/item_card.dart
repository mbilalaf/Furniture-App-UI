import 'package:flutter/material.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';

class ItemCard extends StatelessWidget {
  final String img;
  final String name;
  final String price;

  final Color color;
  const ItemCard({
    super.key,
    required this.img,
    required this.name,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Card(
          color: color,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        img,
                      ),
                    ),
                    Text(
                      name,
                      style: MyTextStyle.captionText,
                    ),
                    Text(
                      price,
                      style: MyTextStyle.largeText.copyWith(
                        color: MyColors.darkBlue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
