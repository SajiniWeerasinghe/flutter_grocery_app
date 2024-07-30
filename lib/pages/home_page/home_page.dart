import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/pages/home_page/widgets/search_box.dart';
import 'package:flutter_grocery_app/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/product_card.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/product_price_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: [appBarActions],
        shadowColor: const Color.fromARGB(31, 8, 7, 7),
        elevation: 3,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              Text(
                "Explore Categories",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of plants that are consumed by humans...",
                    titleColor: Color(0xffFFFFFF),
                    descriptionColor: Color(0xffC3C3C3),
                    mainBoxColor: Color(0xff9E00FF),
                    smallBoxColor: Color(0xff06FFA5),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food,  and by that definition.....",
                    titleColor: Color(0xffFFFFFF),
                    descriptionColor: Color(0xffC3C3C3),
                    mainBoxColor: Color(0xff9E00FF),
                    smallBoxColor: Color(0xff06FFA5),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of plants that are consumed by humans...",
                    titleColor: Color(0xff3B3636),
                    descriptionColor: Color(0xff686060),
                    mainBoxColor: Color(0xffFFE500),
                    smallBoxColor: Color(0xffFF9900),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food,  and by that definition.....",
                    titleColor: Color(0xff3B3636),
                    descriptionColor: Color(0xff686060),
                    mainBoxColor: Color(0xffFFE500),
                    smallBoxColor: Color(0xffFF9900),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "For Sale and Low Cost",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPriceCard(
                    title: "Washing Liquid",
                    amount: 220,
                    unit: "ml",
                    price: 230,
                  ),
                  ProductPriceCard(
                    title: "Coffee and Tea",
                    amount: 100,
                    unit: "g",
                    price: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
