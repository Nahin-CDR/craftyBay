import 'package:ecommerce/presentation/ui/screens/auth/emailVerificationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import '../utility/assetManager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    gotoNextScreen();
    super.initState();
  }
  void gotoNextScreen(){
    Future.delayed(const Duration(seconds: 2)).then((value){
      Get.offAll(const EmailVerificationScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(AssetsManager.logoSVG),
          ),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          const Text("version 1.0.0"),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}