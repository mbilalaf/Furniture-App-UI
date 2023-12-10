import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/utils/my_colors.dart';
import 'package:furniture_app/utils/text_styles.dart';

class MyTile extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  const MyTile({
    super.key,
    required this.img,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key("$MyTile"),
      secondaryBackground: Container(
        decoration: BoxDecoration(
          color: MyColors.orange,
          borderRadius: BorderRadius.circular(38),
        ),
        child: const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Icon(
              Icons.delete_outline,
              color: MyColors.white,
            ),
          ),
        ),
      ),
      background: Container(
        decoration: BoxDecoration(
          color: MyColors.orange,
          borderRadius: BorderRadius.circular(38),
        ),
        child: const Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete_outline,
            color: MyColors.white,
          ),
        ),
      ),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(38),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 75,
                decoration: BoxDecoration(
                  color: MyColors.lightGray,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Image(
                    image: AssetImage(
                      img,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: MyTextStyle.largeText.copyWith(
                      color: MyColors.darkBlue,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 30,
                    width: 85,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: MyColors.darkGray.withOpacity(0.3),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        price,
                        style: MyTextStyle.captionText,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: MyColors.lightGray,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 40,
                    width: 40,
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
                      color: MyColors.lightGray,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: const Center(
                      child: Icon(
                        FontAwesomeIcons.minus,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
