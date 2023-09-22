import 'package:ecommerce/presentation/ui/utility/colorManager.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.onTap,
    required this.title,
    super.key});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            )
        ),
        TextButton(
            onPressed: onTap,
            child: const Text("See All",style: TextStyle(color: ColorsManager.appPrimaryColor))
        )
      ],
    );
  }
}
