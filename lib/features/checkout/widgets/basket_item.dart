import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/checkout/model/basket_item_model.dart';

class BasketItem extends StatelessWidget {
  const BasketItem({super.key, required this.basketItemModel});

  final BasketItemModel basketItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: const Color.fromARGB(167, 213, 213, 213)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(basketItemModel.imagePath),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  basketItemModel.name,
                  style: Styles.textStyle18,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${basketItemModel.amount} packs",
                  style: Styles.textStyle15,
                ),
              ],
            ),
            Spacer(),
            Text("₦ ${basketItemModel.price}"),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
