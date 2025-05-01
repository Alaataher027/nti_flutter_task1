import 'package:flutter/widgets.dart';
import 'package:nti_task_1/features/checkout/model/basket_item_model.dart';
import 'package:nti_task_1/features/checkout/widgets/basket_item.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BasketItem(
          basketItemModel: BasketItemModel(
            imagePath: "assets/images/salad.jpg",
            name: 'Salad',
            amount: 2,
            price: 20000,
          ),
        ),
        BasketItem(
          basketItemModel: BasketItemModel(
            imagePath: "assets/images/salad.jpg",
            name: 'Melon fruit Salad',
            amount: 2,
            price: 20000,
          ),
        ),
        BasketItem(
          basketItemModel: BasketItemModel(
            imagePath: "assets/images/salad.jpg",
            name: 'Salad',
            amount: 2,
            price: 5000,
          ),
        ),
      ],
    );
  }
}
