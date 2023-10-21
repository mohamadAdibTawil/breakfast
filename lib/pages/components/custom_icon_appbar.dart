import 'package:breakfast/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// flutter_svg: ^2.0.7
// const kBackgroundSvgColor = Color(0xffF7F8F8);
class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar(
      {super.key,
      required this.icon,
      this.containerWidth = 37,
      this.height = 5,
      this.width = 5,
      this.onTap});
  final String icon;
  final double width;
  final double height;
  final double containerWidth;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        width: containerWidth,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kBackgroundSvgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(
          icon,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
