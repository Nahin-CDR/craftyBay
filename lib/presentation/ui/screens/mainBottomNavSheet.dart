import 'package:ecommerce/presentation/stateHolders/mainBottomNavController.dart';
import 'package:ecommerce/presentation/ui/screens/categoryListScreen.dart';
import 'package:ecommerce/presentation/ui/screens/homeScreen.dart';
import 'package:ecommerce/presentation/ui/screens/wishListScreen.dart';
import 'package:ecommerce/presentation/ui/utility/colorManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavSheet extends StatefulWidget {
  const MainBottomNavSheet({super.key});
  @override
  State<MainBottomNavSheet> createState() => _MainBottomNavSheetState();
}

class _MainBottomNavSheetState extends State<MainBottomNavSheet> {

  MainBottomNavController mainBottomNavController = Get.put(MainBottomNavController());
  List<Widget>screenList = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const WishListScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (controller){
        return Scaffold(
          body: screenList[controller.currentSelectedIndex],
          bottomNavigationBar : BottomNavigationBar(
            selectedItemColor: ColorsManager.appPrimaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 4,
            currentIndex: controller.currentSelectedIndex,
            onTap: controller.changeScreen,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: "Categories"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: "Cart"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: "WishList"
              )
            ],
          ),
        );
      },
    );
  }
}