import 'package:ecommerce/presentation/ui/utility/assetManager.dart';
import 'package:ecommerce/presentation/ui/utility/colorManager.dart';
import 'package:ecommerce/presentation/ui/widgets/home/homeSlider.dart';
import 'package:ecommerce/presentation/ui/widgets/home/sectionHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/categoryCard.dart';
import '../widgets/circularIconButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(AssetsManager.logoNav),
            const Spacer(),
            CircularIconButton(
              onTap: (){},
              icon: Icons.person,
            ),
            const SizedBox(width: 8.0),
            CircularIconButton(
              onTap: (){},
              icon: Icons.call,
            ),
            const SizedBox(width: 8.0),
            CircularIconButton(
              onTap: (){},
              icon: Icons.notifications,
            )
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none
                  )
                ),
              ),
              const SizedBox(height: 20),
              const HomeSlider(),
              SectionHeader(onTap: (){}, title: "Categories"),
              const CategoryCard(),
              const SizedBox(height: 8),
              SectionHeader(onTap: (){}, title: "Popular"),
            ],
          ),
        )
      )
    );
  }
}



