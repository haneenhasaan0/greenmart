import 'package:flutter/material.dart';
import 'package:greenmart/core/app_images.dart';

class DummyData {
  String categoryId;
  String id;
  String name;
  Color bgColor;
  String quantity;
  String price;
  String image;

  DummyData({
    required this.bgColor,
    required this.categoryId,
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  });
}

List<DummyData> offers = [
  DummyData(
    bgColor: Colors.blueAccent.shade100,
    id: "1",
    name: "banana",
    price: "200",
    quantity: "7kg",
    image: AppImages.banana,
    categoryId: '1',
  ),
  DummyData(
    bgColor: Colors.lime.shade50,
    id: "2",
    name: "apple",
    price: "340",
    quantity: "10kg",
    image: AppImages.apple,
    categoryId: '1',
  ),
  DummyData(
    bgColor: Colors.blueAccent.shade100,

    id: "3",
    name: "ginger",
    price: "244",
    quantity: "11kg",
    image: AppImages.ginger,
    categoryId: '2',
  ),
    DummyData(
    bgColor: Colors.lime.shade50,

    id: "4",
    name: "pepper",
    price: "400",
    quantity: "7kg",
    image: AppImages.pepper,
    categoryId: '2',
  ),
  DummyData(
    bgColor: Colors.blueAccent.shade100,

    categoryId: '2',
    id: "2",
    name: "apple",
    price: "340",
    quantity: "10kg",
    image: AppImages.apple,
  ),
  DummyData(
    categoryId: '2',
    bgColor: Colors.lime.shade50,

    id: "4",
    name: "pepper",
    price: "400",
    quantity: "7kg",
    image: AppImages.pepper,
  ),
  DummyData(
    categoryId: '2',
    bgColor: Colors.lime.shade50,

    id: "4",
    name: "Egg Chicken red",
    price: "400",
    quantity: "4pcs",
    image: AppImages.egg,
  ),
];
List<DummyData> getCategoryById(String name){
  return offers.where((product)=>product.name.toLowerCase().contains(name.toLowerCase())).toList();
}
