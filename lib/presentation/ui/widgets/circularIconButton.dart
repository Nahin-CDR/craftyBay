import 'package:flutter/material.dart';
class CircularIconButton extends StatelessWidget {
  const CircularIconButton({required this.icon,required this.onTap,super.key});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30.0),
      child: CircleAvatar(
        radius: 14,
        backgroundColor: Colors.grey.shade200,
        child: Icon(icon,color: Colors.grey,size: 16),
      ),
    );
  }
}
