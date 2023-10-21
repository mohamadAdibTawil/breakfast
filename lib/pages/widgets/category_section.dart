



import 'package:breakfast/core/models/category_model.dart';
import 'package:breakfast/pages/widgets/category_item.dart';
import 'package:breakfast/pages/widgets/custom_text.dart';
import 'package:flutter/material.dart';
class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(text: 'Category'),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(categories: categories[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 20))),
      ],
    );
  }
}
