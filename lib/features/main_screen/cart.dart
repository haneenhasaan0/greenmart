import 'package:flutter/material.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/main_screen/data/product_model.dart';
import 'package:greenmart/features/widgets/cart_widget.dart';
import 'package:greenmart/features/widgets/custom_elevated_bottom.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: AppStyles.poppin600Black22),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomElevatedButton(text: "Got To Check Out", logic: (){
Navigator.pop(context);
        }),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder:(context, index) {
                  return SizedBox(height: 12,);
                },
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  return CartWidget(dummyData: offers[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
