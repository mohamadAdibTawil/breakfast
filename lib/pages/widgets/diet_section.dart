
import 'package:breakfast/core/models/diet_model.dart';
import 'package:breakfast/pages/widgets/custom_text.dart';
import 'package:breakfast/pages/widgets/diet_item.dart';
import 'package:flutter/material.dart';

class DietSection extends StatelessWidget {
  const DietSection({
    super.key,
    required this.diets,
  });

  final List<DietModel> diets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'Diet',
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return DietItem(diets: diets[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: diets.length,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
          ),
        ),
      ],
    );
  }
}
