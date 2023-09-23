import 'package:ecommerce/presentation/stateHolders/mainBottomNavController.dart';
import 'package:ecommerce/presentation/ui/widgets/home/productCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
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
              title: const Text("Categories",
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
                    child: ProductCard()
                  );
                })
          )
        )
    );
  }
}
