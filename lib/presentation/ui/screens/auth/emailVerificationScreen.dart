import 'package:ecommerce/presentation/ui/screens/auth/otpVerificationScreen.dart';
import 'package:ecommerce/presentation/ui/utility/assetManager.dart';
import 'package:ecommerce/presentation/ui/utility/colorManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SvgPicture.asset(
                    AssetsManager.logoSVG,
                    height: 100,
                ),
              ),
              const SizedBox(height: 16),
              Text("Welcome Back",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 24)),
              const SizedBox(height: 8),
              Text("Please enter your email address", style: Theme.of(context).textTheme.titleMedium?.copyWith(color:Colors.grey)),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding : EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600
                    ),
                    backgroundColor: ColorsManager.appPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  onPressed: (){
                    Get.to(const OTPVerificationScreen());
                  },
                  child: const Text("Next"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
