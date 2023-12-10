import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  const GridItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.5,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          double height = index.isOdd ? 287.0 : 243.0;
          return SizedBox(
            height: height,
            child: Container(
              color: index.isEven ? Colors.blue : Colors.green,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Item $index',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
