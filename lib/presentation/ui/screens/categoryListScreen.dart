import 'package:ecommerce/presentation/ui/widgets/categoryCard.dart';
import 'package:ecommerce/presentation/ui/widgets/home/productCard.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Categories",style: TextStyle(
          color: Colors.black
        )),
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
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
    );
  }
}
