import 'package:flutter/material.dart';

import '../main_screen/data/product_model.dart';
import 'card_item.dart';

class FilteredGridView extends StatelessWidget {
  List<DummyData> dummyData;
  FilteredGridView({super.key,required this.dummyData});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: dummyData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 200,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return SizedBox(
            height: 200,
            child: CardItem(offers: dummyData[index],));
      },
    )
    ;
  }
}
