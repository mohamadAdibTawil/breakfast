
import 'package:breakfast/constants.dart';
import 'package:breakfast/core/models/diet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietItem extends StatelessWidget {
  const DietItem({
    super.key,
    required this.diets,
  });

  final DietModel diets;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
          color: diets.boxColor.withOpacity(.3),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(diets.iconPath),
          Column(
            children: [
              Text(
                diets.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                '${diets.level} | ${diets.duration} | ${diets.calorie}',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: kInfoColor,
                ),
              ),
            ],
          ),
          Container(
            width: 130,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: [
                  diets.viewIsSelected
                      ? kGradientColor1
                      : Colors.transparent,
                  diets.viewIsSelected
                      ? kGradientColor2
                      : Colors.transparent,
                ],
              ),
            ),
            child: Center(
              child: Text(
                'View',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: diets.viewIsSelected
                      ? Colors.white
                      : kButtonColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
