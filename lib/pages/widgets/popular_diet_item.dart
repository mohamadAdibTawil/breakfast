
import 'package:breakfast/core/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularDietItem extends StatelessWidget {
  const PopularDietItem({
    super.key,
    required this.popularDiets,
  });

  final PopularDietsModel popularDiets;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: popularDiets.boxIsSelected
              ? Colors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          boxShadow: popularDiets.boxIsSelected
              ? [
                  BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(0.07),
                      offset: const Offset(0, 10),
                      blurRadius: 40,
                      spreadRadius: 0)
                ]
              : []),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            popularDiets.iconPath,
            width: 65,
            height: 65,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                popularDiets.name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
              Text(
                '${popularDiets.level} | ${popularDiets.duration} | ${popularDiets.calorie}',
                style: const TextStyle(
                    color: Color(0xff7B6F72),
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/button.svg',
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
