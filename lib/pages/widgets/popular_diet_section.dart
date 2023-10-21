import 'package:breakfast/core/models/popular_model.dart';
import 'package:breakfast/pages/widgets/popular_diet_item.dart';
import 'package:flutter/material.dart';

class PopularDietSection extends StatelessWidget {
  const PopularDietSection({
    super.key,
    required this.popularDiets,
  });

  final List<PopularDietsModel> popularDiets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Popular',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.separated(
          itemCount: popularDiets.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(
            height: 25,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemBuilder: (context, index) {
            return PopularDietItem(popularDiets: popularDiets[index]);
          },
        )
      ],
    );
  }
}
