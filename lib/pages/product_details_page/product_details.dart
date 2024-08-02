import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/product_details_page/price_card.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/product_details_page/title_desc_card.dart';
import 'package:flutter_grocery_app/widgets/shared/gradient_button.dart';
import 'package:flutter_grocery_app/widgets/shared/notification_card.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Product Details",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NotificatCard(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFF500).withOpacity(0.29),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart,
                      size: 250,
                      color: const Color(0xff333333).withOpacity(0.75),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleDescCard(
                title: "Product Information",
                desc:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleDescCard(
                title: "Product Information",
                desc:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Price List",
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff3B3636),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const PriceCard(
                productNumber: 1,
                productName: "Green peas ",
                productWeight: 100,
                unit: "g",
              ),
              const PriceCard(
                productNumber: 2,
                productName: "Brussels sprouts. ",
                productWeight: 200,
                unit: "g",
              ),
              const PriceCard(
                productNumber: 3,
                productName: "Broccoli ",
                productWeight: 150,
                unit: "g",
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total  ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "230\$ ",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff9E00FF),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientButton(
                    buttonHeight: 50,
                    buttonWidth: 300,
                    topColor: Color(0xffCC00FF),
                    bottomColor: Color(0xffFFE500),
                    buttonTitle: "Proceed To Pay",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
