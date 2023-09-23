import 'package:ecommerce/application/stateHolderBinder.dart';
import 'package:ecommerce/presentation/ui/utility/colorManager.dart';
import 'package:ecommerce/presentation/ui/screens/mainBottomNavSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftBay extends StatefulWidget {
  const CraftBay({super.key});
  @override
  State<CraftBay> createState() => _CraftBayState();
}

class _CraftBayState extends State<CraftBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: StateHolderBinder(),
      debugShowCheckedModeBanner: false,
      home:MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: MaterialColor(ColorsManager.primaryColorCode,ColorPalette().color),
          ),
          home: const MainBottomNavSheet()//const SplashScreen(),
      ),
    );
  }
}
 