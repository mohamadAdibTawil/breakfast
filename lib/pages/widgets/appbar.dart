import 'package:breakfast/pages/components/custom_icon_appbar.dart';
import 'package:flutter/material.dart';
import 'package:breakfast/constants.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    title: const Text(
      'Breakfast',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    leading: CustomIconAppBar(
        onTap: () {
          Navigator.pop(context);
        },
        icon: kArrowLeftIcon,
        containerWidth: 20,
        height: 20,
        width: 20),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 6),
        child: CustomIconAppBar(icon: kDotsIcon),
      ),
    ],
  );
}
