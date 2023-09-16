import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utility/assetManager.dart';
import '../../utility/colorManager.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100
                ),
                Center(
                  child: SvgPicture.asset(
                    AssetsManager.logoSVG,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 16),
                Text("Complete Profile",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 24)),
                const SizedBox(height: 8),
                Text("Get started with us by sharing your details", style: Theme.of(context).textTheme.titleMedium?.copyWith(color:Colors.grey)),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "First Name",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Mobile",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "City",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                      hintText: "Shipping Address",
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      border: OutlineInputBorder()
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
                    onPressed: (){},
                    child: const Text("Next"),
                  ),
                ),
                const SizedBox(height: 16)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
