
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Padding iconTextField(String iconPath) {

    return Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(iconPath),
            );
  }