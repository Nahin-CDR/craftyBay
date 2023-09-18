
import 'package:flutter/material.dart';

import '../utility/colorManager.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: ColorsManager.appPrimaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: const Icon(Icons.shop,color: ColorsManager.appPrimaryColor,size: 32),
                  ),
                  const SizedBox(height: 8.0),
                  const Text("Product",style: TextStyle(fontSize: 15,letterSpacing: 0.4,color: ColorsManager.appPrimaryColor))
                ],
              ),
            );
          }
      ),
    );
  }
}
