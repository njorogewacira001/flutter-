import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const AppIcon({super.key,
   required this.icon,
    this.backgroundColor=const Color(0xFF000000), 
    this.iconColor=const Color(0xFF756d54),
     this.size=45
     });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
      ),);
  }
}