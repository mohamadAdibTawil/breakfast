import 'package:breakfast/core/models/category_model.dart';
import 'package:breakfast/core/models/diet_model.dart';
import 'package:breakfast/core/models/popular_model.dart';
import 'package:breakfast/pages/widgets/appbar.dart';
import 'package:breakfast/pages/widgets/category_section.dart';
import 'package:breakfast/pages/widgets/custom_textField.dart';
import 'package:breakfast/pages/widgets/diet_section.dart';
import 'package:breakfast/pages/widgets/popular_diet_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];

  void _initialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  void initState() {
    _initialInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        children: [
          const CustomTextField(),
          const SizedBox(
            height: 40,
          ),
          CategorySection(categories: categories),
          const SizedBox(
            height: 40,
          ),
          DietSection(diets: diets),
          const SizedBox(
            height: 40,
          ),
          PopularDietSection(popularDiets: popularDiets),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
