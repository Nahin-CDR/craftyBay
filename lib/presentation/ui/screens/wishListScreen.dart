import 'package:ecommerce/presentation/stateHolders/mainBottomNavController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/home/productCard.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()async{
          Get.find<MainBottomNavController>().backToHome();
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text("WishList",
                style: TextStyle(
                    color: Colors.black
                )
            ),
            elevation: 0,
              leading: IconButton(
                  onPressed: (){
                    Get.find<MainBottomNavController>().backToHome();
                  },
                  icon: const Icon(Icons.arrow_back,color: Colors.black54)
              )
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 16
                ),
                itemCount: 30,
                itemBuilder:(context,index){
                  return const FittedBox(
                    child: ProductCard(),
                  );
                }
            ),
          ),
        )
    );
  }
}