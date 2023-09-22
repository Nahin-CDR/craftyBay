import 'package:ecommerce/presentation/ui/screens/homeScreen.dart';
import 'package:ecommerce/presentation/ui/utility/colorManager.dart';
import 'package:flutter/material.dart';

class MainBottomNavSheet extends StatefulWidget {
  const MainBottomNavSheet({super.key});

  @override
  State<MainBottomNavSheet> createState() => _MainBottomNavSheetState();
}

class _MainBottomNavSheetState extends State<MainBottomNavSheet> {
  int selectedIndex = 0;
  List<Widget>screenList = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorsManager.appPrimaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        elevation: 4,
        currentIndex: selectedIndex,
        onTap: (int index){
          selectedIndex = index;
          if(mounted){
            setState(() {});
          }
        },
        items: [
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
  }
}
