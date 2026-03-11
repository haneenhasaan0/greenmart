import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/features/main_screen/data/product_model.dart';
import 'package:greenmart/features/widgets/custom_form_field.dart';
import 'package:greenmart/features/widgets/filtered_grid_view.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  String catId='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: "search",
          child: Material(
            color: AppColors.transColor,
            child: CustomFormField(
              onChanged: (value){
                setState(() {
                  catId=value;
                });
              },
              text: "search here",
              keyboardType: TextInputType.text,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FilteredGridView(dummyData: getCategoryById(catId)),
      ),
    );
  }
}
