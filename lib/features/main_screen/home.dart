import 'package:flutter/material.dart';
import 'package:greenmart/features/main_screen/shop.dart';

import '../../core/app_colors.dart';
import '../../core/app_images.dart';
import '../../core/text_style.dart';
import 'account.dart';
import 'cart.dart';
import 'explore.dart';
import 'favourite.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cuuIndex = 0;
  List<Widget> screens=[
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScrren(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cuuIndex,
        onTap: (index) {
          setState(() {
            cuuIndex = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: AppStyles.poppin600Black22.copyWith(fontSize: 12),
        selectedLabelStyle: AppStyles.poppin600White.copyWith(
          color: AppColors.meentGreenColor,
          fontSize: 12,
        ),
        selectedItemColor:  AppColors.meentGreenColor,
        unselectedItemColor:  AppColors.blackColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.whiteColor,
            label: "Shop",
            icon: ImageIcon(
              AssetImage(AppImages.shop),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.whiteColor,
            label: "Explore",
            icon: ImageIcon(
              AssetImage(AppImages.explore),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.whiteColor,
            label: "Cart",
            icon: ImageIcon(
              AssetImage(AppImages.cart),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.whiteColor,
            label: "Favourite",
            icon: ImageIcon(
              AssetImage(AppImages.fav),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.whiteColor,
            label: "Account",
            icon: ImageIcon(
              AssetImage(AppImages.account),
            ),
          ),
        ],
      ),
      body: screens[cuuIndex],
    );
  }
}
