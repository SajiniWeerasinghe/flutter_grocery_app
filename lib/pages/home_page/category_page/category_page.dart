import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_app/pages/home_page/category_page/widgets/selected_items.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/categories_page/category_card.dart';
import 'package:flutter_grocery_app/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Categories",
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
              const Text(
                "All Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B3636),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CategoryCard(
                        title: "Vegetables &\n Fruits",
                        description: "20+ more ...",
                        categoryBorderColor: const Color(0xff0094FF),
                        mainCategoryColor:
                            const Color(0xff0057FF).withOpacity(0.29),
                        circleColor: const Color(0xff0E00AC),
                      ),
                      CategoryCard(
                        title: "Cooking & \nElements",
                        description: "10+ more ...",
                        categoryBorderColor: const Color(0xff00F0FF),
                        mainCategoryColor:
                            const Color(0xff00E0FF).withOpacity(0.29),
                        circleColor: const Color(0xff10C0F8),
                      ),
                      CategoryCard(
                        title: "Vegetables &\n Fruits",
                        description: "20+ more ...",
                        categoryBorderColor: const Color(0xffFFA800),
                        mainCategoryColor:
                            const Color(0xffFF3D00).withOpacity(0.29),
                        circleColor: const Color(0xffE56C6C),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CategoryCard(
                        title: "Bites& \nDrinks",
                        description: "53+ more ...",
                        categoryBorderColor: const Color(0xff00FF29),
                        mainCategoryColor:
                            const Color(0xff70FF00).withOpacity(0.29),
                        circleColor: const Color(0xff06FFA5),
                      ),
                      CategoryCard(
                        title: "Chicken& \nBeef",
                        description: "2+ more ...",
                        categoryBorderColor: const Color(0xffFFB800),
                        mainCategoryColor:
                            const Color(0xffFFF500).withOpacity(0.29),
                        circleColor: const Color(0xffFF9900),
                      ),
                      CategoryCard(
                        title: "Transport& \nVehicles",
                        description: "20+ more ...",
                        categoryBorderColor: const Color(0xffCC00FF),
                        mainCategoryColor:
                            const Color(0xffCC00FF).withOpacity(0.29),
                        circleColor: const Color(0xffDB00FF),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Selected Items",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B3636),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SelectedItems(),
            ],
          ),
        ),
      ),
    );
  }
}
