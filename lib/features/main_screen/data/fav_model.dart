import 'package:greenmart/core/app_images.dart';

class FavModel {
  String image;
  String title;
  String subTitle;
  String price;
  FavModel({required this.subTitle,required this.title,required this.image,required this.price});
}
List<FavModel> favModel=[
  FavModel(subTitle: "325ml, Price", title: "Sprite Can", image: AppImages.sprite, price: '\$1.50'),
  FavModel(subTitle: "330ml, Price", title: "Coca Cola Can", image: AppImages.coca,price: '\$1.99'),
  FavModel(subTitle: "355ml, Price", title: "Diet Can", image: AppImages.diet,price: '\$15.50'),
  FavModel(subTitle: "2L, Price", title: "Apple & Grape Juice", image: AppImages.pepsi,price: '\$14.90'),
  FavModel(subTitle: "325ml, Price", title: "Sprite Can", image: AppImages.appleJuice,price: '\$1.50'),
];