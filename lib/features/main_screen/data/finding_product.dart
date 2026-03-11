import 'package:flutter/material.dart';
import 'package:greenmart/core/app_images.dart';

class FindingProduct {
  final Color BorderColor;
  final Color bgrColor;
  final String image;
  final String title;

  FindingProduct({
    required this.image,
    required this.bgrColor,
    required this.BorderColor,
    required this.title,
  });
}

List<FindingProduct> findingProduct = [
  FindingProduct(
    image: AppImages.fruits,
    bgrColor: Color(0xff53b175b2).withOpacity(0.1),
    BorderColor: Color(0xff53b175b2).withOpacity(0.8),
    title: "Fresh Fruits\n & Vegetable",
  ),
  FindingProduct(
    image: AppImages.beverage,
    bgrColor: Color(0xFFB7DFF540).withOpacity(0.25),
    BorderColor: Color(0xff53b175b2).withOpacity(0.9),
    title: "Fresh Fruits\n & Vegetable",
  ),
   FindingProduct(
    image: AppImages.oil,
    bgrColor: Color(0xFFF8A44C1A).withOpacity(0.1),
    BorderColor: Color(0xFFF8A44C1A).withOpacity(0.8),
    title: "Cooking Oil\n & Ghee",
  ),
   FindingProduct(
    image: AppImages.milk,
    bgrColor: Color(0xFFFDE59840).withOpacity(0.25),
    BorderColor: Color(0xFFFDE59840).withOpacity(0.9),
    title: "Dairy & Eggs",
  ),
   FindingProduct(
    image: AppImages.meat,
    bgrColor: Color(0xFfF7A59340).withOpacity(0.25),
    BorderColor: Color(0xff53b175b2).withOpacity(0.9),
    title: "Meat And Fish",
  ),
   FindingProduct(
    image: AppImages.bread,
    bgrColor: Color(0xFFD3B0E040).withOpacity(0.25),
    BorderColor: Color(0xff53b175b2).withOpacity(0.9),
    title: "Bakery & Snacks",
  ),

];
